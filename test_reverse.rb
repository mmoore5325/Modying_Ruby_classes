require 'minitest/autorun'
require_relative 'reverse.rb'

class TestMyReverse < Minitest::Test
	
	def test_reverse_of_empty_array
	arr = []
	assert_equal([], arr.my_reverse())
	end

	def test_reverse_array
		arr = ["3", "2", "1"]
		assert_equal(["1", "2", "3"], arr.my_reverse())
	end

	# def test_empty_index
	# 	arr = []
	# 	assert_equal([], arr.find_values_index)
	# end
	# def test_empty_index
	# 	arr = []
	# 	assert_equal({}, arr.find_first_value_index())
	# end

	def test_my_index_for_empty_array
		arr = []
		assert_equal(nil, arr.my_index("a"))
	end
	def test_first_index_location_of_value
		arr = ["a", "b", "c", "a", "b", "d", "c"]
		# assert_equal({"a"=>3, "b"=>4, "c"=>6, "d"=>5}, arr.find_first_value_index())
		assert_equal(6, arr.my_index("c"))
		assert_equal(3, arr.my_index("a"))
	end

	def test_reverse_index_first_location
		arr =["a", "b", "c", "a", "b", "d", "c"]
		arr.my_reverse()
		assert_equal(4, arr.my_reverse.my_index("c")		)
		assert_equal(5, arr.my_reverse.my_index("b"))
	end
	
	# def test_reverse_index_location
	# 	arr =["a", "b", "c", "a", "b", "d", "c"]
	# 	assert_equal(5, arr.my_reverse.my_index("b"))
	# end
	def test_index_array
		arr = ["a", "b", "c", "a", "b", "d", "c"]
		assert_equal({"a"=>[0,3], "b"=>[1,4], "c"=>[2,6], "d"=>[5]}, arr.find_values_index())
	end
end