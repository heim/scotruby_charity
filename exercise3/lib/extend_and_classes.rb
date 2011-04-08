module MyMod
  
  def my_accessor(attr_name)
    @my_attrs ||= []
    @my_attrs << attr_name
    attr_accessor attr_name
  end
  
  def my_attributes
    @my_attrs
  end
end


class MyClass
  extend MyMod
  my_accessor :field1
end




p MyClass.my_attributes