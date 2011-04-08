class MyClass
  @iv = "abcd"
  class << self
    attr_accessor :iv
  end
end


p MyClass.iv

MyClass.iv = "hello word"

p MyClass.iv