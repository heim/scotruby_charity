#People that are ignorant can do amazing things. #chadfowlerquotes #scotruby

module TimeStampable
  def created_at
    @_created_at
  end
  def initialize(*)
    @_created_at = Time.now
    super
  end
end


class SomeClass < Array
  include TimeStampable
end


c = SomeClass.new([1,2,3])
p c.created_at

