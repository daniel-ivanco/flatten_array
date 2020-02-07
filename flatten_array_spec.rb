require 'minitest/autorun'
require './flatten_array'

class CustomArrayTest < MiniTest::Test
  def test_with_proper_array
    assert_equal(FlattenArray.call([1, 2, 3]), [1, 2, 3])
  end

  def test_with_empty_array
    assert_equal(FlattenArray.call([]), [])
  end

  def test_with_more_flat_array_inside_nested_array
    assert_equal(FlattenArray.call([[1], [2, 3]]), [1, 2, 3])
  end

  def test_with_deeply_nested_array
    assert_equal(FlattenArray.call([[[[1]]], 2, 3]), [1, 2, 3])
  end

  def test_with_all_nested
    assert_equal(FlattenArray.call([[1], [2], [3]]), [1, 2, 3])
  end
end