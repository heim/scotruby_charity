def l(&block)
  block
end

g = Proc.new{ puts "hello" } #equal - liberal ift argumenter
g = lambda{ puts "hello" } #equal - use
g = proc{ puts "hello" } #equal - dont use


g.yield



exit
def show_block_param(&x) 
  p x.methods - Object.instance_methods
  p x.inspect
  x.yield(123, 321)
  #block.call
  #yield
end

show_block_param { |thing, thang| puts "in block got #{thing} and #{thang}" }