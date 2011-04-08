def block_in_sandbox(param)
  lvar = "local variable"
  lambda do
    puts "param #{param}" 
    puts "lvar #{lvar}" 
  end
end

block = block_in_sandbox(99) #metoden kjøres, men beholder bindingen.
block.call