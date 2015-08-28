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
		elsif ab - ac == 10 || ab - bc == 10 || ac - bc == 10 || ac - ab == 10 || bc - ac == 10 || bc - ab == 10	
			5
		else
			0		
		end
	end

	# TODO - write in_order?

	# TODO - write less_by_ten?
	
	# TODO - write fizz_string

	# TODO - write first_last_six?

	# TODO - write rotate_left

	# TODO - write double23?

end