
def one(void)
  puts "one got #{yield}" if block_given?
end

def two
  puts "two got #{yield}" if block_given?
end


one two do
  "hello from do-end"
end

one two { "hello from curly-face" }