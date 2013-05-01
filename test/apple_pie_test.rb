%w(
turn
minitest/autorun
pry-rescue/minitest
factory_girl
).each do |e| require e end
FactoryGirl.find_definitions
require_relative '../lib/apple_pie'
require_relative 'focus_group'

load 'lib/apple_pie.rb'

class ApplePieTest < MiniTest::Unit::TestCase
  def setup
    @pie = FactoryGirl.build :apple_pie
  end
  def test_opinion
    average = FocusGroup.average_opinion_of @pie
    assert_operator average, :>=, 0.7
  end
end
