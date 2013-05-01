require_relative 'test_helper'


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
    assert_operator average, :>=, 0.2
  end
end
