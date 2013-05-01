%w(
turn
minitest/autorun
pry-rescue
factory_girl
).each do |e| require e end
require_relative '../lib/apple_pie'
require_relative 'focus_group'

begin
  FactoryGirl.find_definitions
rescue FactoryGirl::DuplicateDefinitionError => e
  # the cost of live reloading: not everything is ready for it
end

# load 'lib/apple_pie.rb'

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
