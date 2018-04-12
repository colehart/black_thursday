require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/analyzer'

class AnalyzerTest < Minitest::Test
  include Analyzer

  def test_average
    assert_equal 2, average(4, 2)
  end
  
  def test_standard_deviation
    set = [3, 4, 5]
    assert_equal 1, standard_deviation(set, average(set.reduce(:+), set.count))
  end
end