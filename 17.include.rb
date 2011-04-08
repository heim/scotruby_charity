module Logger
  def log(msg)
    puts msg
  end
end

#include Logger

#log("Hello log mawfawka")


class Album 
  include Logger
end

class Song
  include Logger
end


