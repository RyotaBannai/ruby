CONST = ' out there'

class Inside_one
  CONST = proc {' in there'} # lambda 関数のような仕組み call を使って run する
  def where_is_my_CONST
    ::CONST + ' inside one'
  end
end

class Inside_two
  CONST = ' inside two'
  def where_is_my_CONST
    CONST
  end
end

puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST # Global な Const を使うときは先頭に Object:: をつけた方が視覚的に良い
puts Inside_two::CONST + CONST # Object:: をつけなくても使用可
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST