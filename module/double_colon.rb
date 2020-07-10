MR_COUNT = 0         # constant defined on main Object class
module Foo
  MR_COUNT = 0
  ::MR_COUNT = 1    # set global count to 1 !!!
  MR_COUNT = 2      # set local count to 2
end
puts MR_COUNT        # this is the global constant
puts Foo::MR_COUNT


=begin
　モジュール内で宣言されたクラスメソッド（self. から宣言されるメソッド）は、
　include や extend で拡張したクラスから呼び出すことができ無い
=end

=begin
 同名のモジュール関数とクラスメソッドがあった場合、後に定義されたメソッドのほうが実行される
=end

module Mod
  def hello # モジュール関数
    puts "hello"
  end

  def goodbye
    puts "goodbye"
  end

  def self.uncalled_from_others # クラスメソッド

    puts "this method can't be called"
  end

  module_function :hello, :goodbye # you need to define # and you can define multiple methods at once.
end

Mod.hello
Mod.goodbye
Mod.uncalled_from_others

class Obj
  include Mod
end

ins = Obj.new
ins.hello #=> "Hello"