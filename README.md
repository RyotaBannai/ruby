### Scope 
| local| global | instance | class | constant| 
|:------:|:------:|:-----:|:-----:|:-----:|
| \[a-z\] or _ | $ | @ | @@ | \[A-Z\] |
- `nil` which is assigned to `uninitialized variables` 
- `self` which refers to the currently executing object.
- _Use of global variables is strongly discouraged._
- a **constant** value to be changed after it has been declared, although the interpreter will protest slightly with a warning message.
  Constants declared `within a class or module` are available anywhere `within the context of that class or module`. Constants declared `outside of a class or module` are assigned **global scope**.

|variable Name	|Variable Value|
|:------:|:------|
|$@	| The location of latest error                            |
|$_	| The string last read by gets                            |
|$.	| The line number last read by interpreter                |
|$&	| The string last matched by regexp                       |
|$~	| The last regexp match, as an array of subexpressions    |
|$n	| The nth subexpression in the last match (same as $~[n]) |
|$=	| The case-insensitivity flag                             |
|$/	| The input record separator                              |
|$\	| The output record separator                             |
|$0	| The name of the ruby script file currently executing    |
|$*	| The command line arguments used to invoke the script    |
|$$	| The Ruby interpreter's process ID                       |
|$?	| The exit status of last executed child process          |

### loop
- `do` is optional
```ruby
i = 0
while i < 5 do
   puts i
   i += 1
   break if i == 2
end
```
- more intuitive way of loop: `until`
```ruby
i = 0
until i == 5 # loop from i == 0 until i == 4 (exclusive)
   puts i
   i += 1
end

# until used as modifier
i = 0
puts i += 1 until i == 5 # loop from i == 1 until i == 5 (inclusive)
```
- break in the nested loop, break out of inner most loop and outer loop keep looping.
```ruby
for j in 1..5 do
     for i in 1..5 do
         print i,  " "
         break if i == 2
     end
end
```
- `next` is like `continue` in other languages
### String
- `General Delimited Strings`: define any character you want as a string delimiter simply by prefixing the desired character with a `%`
```ruby
myString = %&This is my String&
```
- Ruby also provides a few special delimited strings. `%Q` is the equivalent of `double quote` delimiters and `%q` is the equivalent of `single quotes`. `%x` is the equivalent of back-quote (`` `  ``) delimited strings.
```ruby
myString = %q(This is "my" String)
myString = %Q(This is "my" String) # works as well
```
- get length and check if empty string or not.
```ruby
myString = ""
myString.empty? # => true
myString.length # => 0
```
### Substring
- The `gsub` method returns a modified string, **leaving the original string unchanged**, whereas the `gsub!` method directly modify the string object on which the method was called.
- An entire string may be replaced with `replace` method.
```ruby
myString = "Welcome to PHP!" # => "Welcome to PHP!"
myString.replace "Goodbye to PHP!" # => "Goodbye to PHP!"
```
- The `chop` returns a modified string, **leaving the original string object unchanged**. Use `chop!` to have the change applied to the string object on which the method was called.
- `chomp(rs = $/) -> String`: 末尾から `rs` で指定する改行コードを取り除いた文字列を生成して返す。`rs` が `"\n"` (`$/` のデフォルト値) のときは、実行環境によらず `"\r", "\r\n", "\n"` のすべてを改行コードとみなして取り除きます。
```ruby
$/ = "\n"   # デフォルト値と同じ
p "foo\r".chomp    # => "foo"
p "foo\r\n".chomp  # => "foo"
p "foo\n".chomp    # => "foo"
p "foo\n\r".chomp  # => "foo\n" => \n\r のときは最後の一つを`chomp`
```
- `strip -> String` : 文字列先頭と末尾の空白文字を全て取り除いた文字列を生成して返す。空白文字の定義は `"\t\r\n\f\v"` 。また、文字列**右側**からは `"\0"` も取り除くが、**左側**の `"\0"` は取り除かない。
```ruby
str = "\tabc\n" # => abc
```
- オブジェクト指向で一般的なクラス以外にも、`モジュール`という概念が存在する。モジュールではクラスと同じように`定数やメソッドをまとめたり、クラスに組み込んで多重継承を実現したり、クラスなどをまとめることで名前空間を提供するなど`、いろいろな使い方ができる。
- `Mix-in`: クラスに組み込んで多重継承を実現する。
> Ruby のクラスは単一継承のみですが、モジュールをクラスに組み込むことで`多重継承を可能に`しています（ここだけ聞くと Java で言う interface のようですが、module ではメソッドの機能を実装することができます）。クラスにモジュールを include したり extend することを Mix-in と言い、Mix-in によってクラスの肥大化を防いだり、クラスをまたがった同じ処理を切り出して繰り返しを防ぐことができます。
  モジュール関数、クラスメソッドは組み込むことができません。
- `include`: 対象のクラスに include したモジュールのメソッドが`インスタンスメソッドとして`組み込まれる。クラスから `new` で作成したインスタンスで呼び出すことができる。
- `extend`: 対象のクラスに extend したモジュールのメソッドが`クラスメソッドとして`組み込まれる。
- `名前空間とMix-in`: モジュールを重ねることで、MIx-inに使うモジュールを名前空間内で提供することができる。
```ruby
module Name # 名前空間としてのモジュール !!!!!
  module Mod  # Mix-inとしてのモジュール !!!!!
    def hello
      puts 'Hello'
    end
  end
end

class Obj # Mix-in
  extend Name::Mod # !!!!!
end
Obj.hello #=> "Hello"
```

#### モンキーバッチ
- `モンキーバッチ` (`monkey patch`: 他のコードと衝突する可能性のあるパッチが `ゲリラパッチ` (`guerilla patch`) と呼ばれていたが、音が似ていることによって `ゴリラパッチ` (`gorilla patch`) に転じ、さらにそこから `モンキーパッチ` (`monkey patch`))
- `パッチに賞味期限を設定する`: パッチが不要になったら開発者が自動的に気づけるようにする. ライブラリの特定のバージョンの挙動に依存してパッチを当てざるを得なくなった場合、ライブラリをアップデートしたら例外が発生するようにして、もしパッチを消し忘れてもテスト実行時などに気づけるようにする。
- `モンキーパッチを外す作業`: 外部ライブラリのアップデートや内部ライブラリの挙動を変更した場合の対応とほぼ同じ。 つまり、`影響範囲を調べて、動作確認をして、問題なければリリースするという手順を踏む`。
- `モンキーパッチを当てていけないもの`：パッチを当てたことによってアプリケーションコード (モンキーパッチを当てたライブラリを使う側のコード、 Rails の場合は app ディレクトリ以下にあるコードなど) を変更させるべきではないうものがある。 つまり、たとえライブラリにパッチを当てたとしても、新しいインターフェースを増やしたり、既存のインターフェースを変更させないということ。→ これによって、モンキーパッチを外すときの労力がかなり下がる。
- パッチを隔離する: パッチ専用のフォルダを作製し、一覧生をあげるのと読み込みのタイミングを統一する。クックパッドでは `#{Rails.root}/lib/monkey_patches` というディレクトリがよく使われており、このディレクトリをイニシャライザで require している。
```ruby
# config/initializers/000_monkey_patches.rb
Dir[Rails.root.join('lib/monkey_patches/**/*.rb')].sort.each do |file|
  require file
end
```
- 参考：[Ruby on Rails アプリケーションにおけるモンキーパッチの当て方](https://techlife.cookpad.com/entry/a-guide-to-monkey-patchers)
- `ruby gem` などでは、クラス名やメソッド名の重複による使用者からのモンキーパッチを防ぐために gem の中身を全て 1 つのモジュールで梱包することが多い。
```ruby
module Name
  class Hoge
    def self.hello
      puts 'hello'
    end
  end
end
Name::Hoge.hello #=> "hello"
```