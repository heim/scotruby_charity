class Object
  def eigen_class
    class << self
      self
    end
  end
end

e = "abcd".eigen_class