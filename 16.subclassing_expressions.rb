class Address < Struct.new(:street, :city, :zip)
  def to_s
    "#{street}, #{zip}, #{city}"
  end
end


a = Address.new("Helgerudveien 2", "Hønefoss", 3519)

puts a.to_s