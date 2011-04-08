

eval("puts 'hello'")



def create_multiplier(factor)
  code = %{
    def times_#{factor}(param)
      param * #{factor}
    end
  }
  eval code
end



create_multiplier(2)

puts times_2(3)
puts times_2(4)


create_multiplier(3)

puts times_3("Ho! ")


p Object.private_instance_methods.grep /times/