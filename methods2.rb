module Methods2
	
	def elevenish?(n)
		if n % 11 == 0 || (n - 1) % 11 == 0
			true
		else
			false
		end
	end
	
	def ice_cream_party?(a, b)
		if a < 5 && b < 5 
			if a / b == 2 || b / a == 2
				2
			else
				0
			end
		elsif a / b == 2 || b / a == 2 #&& a >= 5 && b >= 5
			2
		else
			1
		end
	end
	
	def successful_squirrel_party?(a, b)
		if b < 5
			if a >= 40 && a <= 60
				true
			else
				false
			end
		elsif b >= 5 && b < 8
			if a >= 40
				true
			else
				false
			end
		end
	end
	
	def ticket(a, b, c)
		ab = a + b
		ac = a + c
		bc = b + c
		if ab == 10 || ac == 10 || bc == 10
			10
		elsif ab - c == 10 || bc - a == 10 || ac - b == 10
			5
		else
			0		
		end
	end

	def in_order?(a, b, c, bOk)
		if !bOk
			if b > a && c > b
				true
			else
				false
			end
		elsif bOk
			if c > a
				true
			else
				false
			end
		end
	end

	def less_by_ten?(a, b, c)
		if a - b >= 10 || a - c >= 10 || b - a >= 10 || b - c >= 10 || c - a >= 10 || c - b >= 10
			true
		else
			false
		end
	end
	
	def fizz_string(word)
		if word[0].downcase == "f" && word[word.length - 1] == "b"
			"FizzBuzz"
		elsif word[0].downcase == "f"
			"Fizz"
		elsif word[word.length - 1] == "b"
			"Buzz"
		else 
			word
		end
	end

	def first_last_six?(array)
		if array[0] == 6 || array[array.length - 1] == 6
			true
		else
			false
		end
	end

	def rotate_left(array)
		array = [array[1], array[2], array[0]]
		array
	end

	def double23?(array)
		i = 0
		threes = 0
		twos = 0
		begin
			if(array[i] == 3)
				threes += 1
			elsif(array[i] == 2)
				twos += 1
			end
			i += 1
		end until i > array.length
		if twos >= 2 || threes >= 2
			true
		else
			false
		end
	end

end