def transpose(string)
#your code here
  while string.include?("gn")
    string.gsub!("gn", "ng")
  end
  string
end

def transpose(string)
  stack = []
  string.each_char do |c|
    if c == 'n'
      gs = []
      while stack.last == 'g'
        gs << stack.pop
      end
      stack << c
      stack += gs
    else
      stack << c
    end
  end
  stack.join("")
end

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg
