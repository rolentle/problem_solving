gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'exercise_1_solutions'

class StringsTest < Minitest::Test
  def test_determines_a_string_has_unique_characters
    unique = "string"
    assert_equal true, StringParser.new(unique).unique?
    blah = "sstring"
    refute_equal true, StringParser.new(blah).unique?
  end

  def test_reverse_a_string
    reverse = "reverse"
    assert_equal "esrever", StringParser.new(reverse).reverse
  end

  def test_can_find_uniques
    a = "abcd"
    aa = "aabcd"
    aaa = "abbcda"
    assert_equal a, StringParser.new(a).uniq
    assert_equal a, StringParser.new(aa).uniq
    assert_equal a, StringParser.new(aaa).uniq
  end
end
