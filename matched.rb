# Brandon Toups
# bmt0015@auburn.edu
# matched.rb

# Ruby string matcher - balanced brackets/quotes

class Matcher
  	def paired?(input)
		# stack for easy check
    		stack = []
		# hashmap implementation { key => values, ... }
		# (%Q avoids double quote escape issue)
    		symbols = {'{' => '}', '[' => ']', '(' => ')', "%Q" => "%Q"}
		
		# for each character in string
		input.each_char do |char|
			
			# if that character is a key value in symbols hashmap
    			if symbols.key?(char)
				# push that character onto stack
	        		stack.push(char)
			
			# else if this character is included in the value set of the hashmap
			elsif symbols.values.include?(char)
					
				# program will return false iff the next popped character does
				# not equal the key value associated with that value in the Set
    				return false if symbols.key(char) != stack.pop
	
			end
			
		end

		# stack empty -> all brackets matched (all pushed openers had popped closers
		# false if not empty
		stack.empty?
			
	end
	  
end

# i/o - takes string value as input
print "Enter a string: "
# .chomp removes the newline 
str = gets.chomp

# Since any brackets between quotations must be ignored: 
# RegEx to ignore all portions of text enclosed in quotes
# \s*	zero or more whitespace before first quote
# \" 	escaped double quote
# .+ 	match one or more of any character inside quotes
# \"$ 	the end of regex must be close quotes 
# To aid in portability, dumb quotes (stright quotes) were used (%Q).
no_quotes = str.sub /\s*\".+\"$/, ''

# class object
rb = Matcher.new()
# class method paired?()
puts rb.paired?(no_quotes)
