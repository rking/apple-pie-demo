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
    expensive_setup
    quick_setup
  end

  def expensive_setup
    @pie = FactoryGirl.create :apple_pie
  end

  def quick_setup
    @pie.bake_like_mommy_does
  end

  def test_opinion
    average = FocusGroup.average_opinion_of @pie
    assert_operator average, :>=, 0.7
  end
end
