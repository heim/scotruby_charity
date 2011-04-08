module MyMod

  def my_accessor(attr_name)
    @my_attrs ||= []
    @my_attrs << attr_name
    MyMod.record_global(attr_name)
    attr_accessor attr_name
  end
  
  def self.record_global(attr_name)
    @all_attributes ||= []
    @all_attributes << attr_name
  end
  
  def self.all_attributes
    @all_attributes
  end
  
  def my_attributes
    @my_attrs
  end
end




describe MyMod do
  it "records names of all attributes defined in all classes extending MyMod" do
    class MyFoo
      extend MyMod
      my_accessor :foo1
    end
    
    class MyBar
      extend MyMod
      my_accessor :bar1
    end
    
    MyMod.all_attributes.should include(:foo1, :bar1)
    
  end
end

class MyClass
  extend MyMod
  my_accessor :field1
end



describe MyClass do
  it "has an attribute called #field1" do
    c = MyClass.new
    c.field1 = 99
    c.field1.should == 99
  end
  it "has an attribute called #field2" do
    c = MyClass.new
    c.field1 = 99
    c.field1.should == 99
  end
  
  describe "self.#my_accessor" do
    it "should be accessible from within the class" do
      class MyClass
        my_accessor :myfield
      end
      
      MyClass.new.should respond_to(:myfield)
    end
    
    describe "recording attributes" do
      it "responds to self.my_attributes" do
        MyClass.should respond_to(:my_attributes)
      end
      
      it "records all attributes" do
        class MyClass
          my_accessor :myfield
        end
        
        MyClass.my_attributes.should include(:myfield)
      end
    end
  end
end