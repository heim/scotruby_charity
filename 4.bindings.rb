class A
  attr_writer :ivar
  
  def initialize
    @ivar = 123
  end
  
  def get_binding
    lvar = "value of lvar"
    binding
  end
end



a = A.new
bind = a.get_binding { "block value" }

eval "puts lvar", bind
eval "puts @ivar", bind


a.ivar = "new value of ivar"

eval "puts @ivar", bind
eval "puts yield", bind
eval "puts self", bind