require "minitest/autorun"

class TestHash < MiniTest::Unit::TestCase

	def setup
		@hash = {'month' => 'May', 'day' => 'Tuesday', 'hour' => 10}
	end

	def test_keys
		# assert_equal '2.0.0', RUBY_VERSION - NOT A GOOD IDEA TO USE GLOBAL VARIABLES. Use variables contained within the code that you have control over.
		assert_equal ['month', 'day', 'hour'], @hash.keys
	end

	def test_values
		assert_equal ['May','Tuesday', 10], @hash.values
	end

	def test_replace
		@hash.replace({'year' => 2013, 'chinese_year' => 'snake', 'city' => 'london'})
		assert_equal 2013, @hash['year']
		assert_equal 'snake', @hash['chinese_year']
		assert_equal 'london', @hash['city']
		assert_equal 3, @hash.keys.length
	end

	def test_rassoc
		refute_nil @hash.rassoc(10) 
	end

end