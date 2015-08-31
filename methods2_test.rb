require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods2'

class Methods2Test < MiniTest::Test
	def setup
		@m = Class.new do
     include Methods2
   	end.new
	end

	def test_elevenish
		assert_equal true, @m.elevenish?(11)
		assert_equal true, @m.elevenish?(12)
		assert_equal true, @m.elevenish?(22)
		assert_equal true, @m.elevenish?(23)
		assert_equal false, @m.elevenish?(15)
		assert_equal false, @m.elevenish?(17)
	end

	def test_ice_cream_party
		assert_equal 0, @m.ice_cream_party?(1, 1)
		assert_equal 0, @m.ice_cream_party?(4, 3)
		assert_equal 1, @m.ice_cream_party?(6, 7)
		assert_equal 1, @m.ice_cream_party?(5, 5)
		assert_equal 2, @m.ice_cream_party?(2, 4)
		assert_equal 2, @m.ice_cream_party?(5, 10)
		assert_equal 2, @m.ice_cream_party?(10, 5)
		assert_equal 2, @m.ice_cream_party?(6, 12)
	end

	def test_successful_squirrel_party
		assert_equal true, @m.successful_squirrel_party?(40, 0)
		assert_equal true, @m.successful_squirrel_party?(60, 0)
		assert_equal true, @m.successful_squirrel_party?(40, 3)
		assert_equal true, @m.successful_squirrel_party?(40, 3)
		assert_equal true, @m.successful_squirrel_party?(45, 4)
		assert_equal true, @m.successful_squirrel_party?(45, 4)
		assert_equal true, @m.successful_squirrel_party?(61, 5)
		assert_equal true, @m.successful_squirrel_party?(61, 6)
		assert_equal false, @m.successful_squirrel_party?(39, 0)
		assert_equal false, @m.successful_squirrel_party?(14, 0)
	end

	def test_ticket
		assert_equal 10, @m.ticket(5, 5, 5)
		assert_equal 10, @m.ticket(5, 5, 0)
		assert_equal 10, @m.ticket(0, 5, 5)
		assert_equal 10, @m.ticket(5, 0, 5)
		assert_equal 5, @m.ticket(7, 4, 1)
		assert_equal 0, @m.ticket(2, 2, 2)
		assert_equal 0, @m.ticket(5, 3, 9)
	end

	def test_in_order
		assert_equal true, @m.in_order?(1, 2, 3, false)
		assert_equal true, @m.in_order?(1, 1, 2, true)
		assert_equal false, @m.in_order?(2, 1, 2, false)
		assert_equal false, @m.in_order?(1, 2, 1, false)
		assert_equal false, @m.in_order?(2, 1, 1, true)
	end

	def test_less_by_ten
		assert_equal true, @m.less_by_ten?(10, 0, 0)
		assert_equal true, @m.less_by_ten?(0, 10, 0)
		assert_equal true, @m.less_by_ten?(0, 0, 10)
		assert_equal true, @m.less_by_ten?(11, 0, 0)
		assert_equal true, @m.less_by_ten?(0, 11, 0)
		assert_equal true, @m.less_by_ten?(0, 0, 11)
		assert_equal false, @m.less_by_ten?(1, 2, 3)
	end

	def test_fizz_string
		assert_equal "Fizz", @m.fizz_string("Face")
		assert_equal "Buzz", @m.fizz_string("Crumb")
		assert_equal "FizzBuzz", @m.fizz_string("FaceCrumb")
		assert_equal "butts", @m.fizz_string("butts")
	end

end
