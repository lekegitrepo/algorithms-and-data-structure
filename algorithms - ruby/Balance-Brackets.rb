def balanced_brackets?(string)
    stack = []
    opening = ['(', '[', '{']
    closing = [')', ']', '}']
    
    string.chars.each do |char|
      if opening.include?(char)
        stack << char
      elsif closing.include?(char)
      value = stack.pop
      puts (value)
      puts (opening.index(value))
      puts (closing.index(char))
        return false if opening.index(value) != closing.index(char)
      end
    end    
    stack.empty?
end

puts balanced_brackets?('(hello)[world]')
# => true
puts balanced_brackets?('([)]')
# => false
puts balanced_brackets?('[({}{}{})([])]')
# => true
