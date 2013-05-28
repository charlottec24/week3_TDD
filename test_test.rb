require 'minitest/autorun'

class TestArray < MiniTest::Unit::TestCase

	def test_count
		# 1 - Setup (optional)
		array = [5, 7, 9]
		expected = 3
		# 2 - Action under test
		actual = array.count
		# 3 - Asserting axpectations
		assert_equal expected, actual
	end

	def test_count_concise
		assert_equal 3, [5,7,9].count
	end
end