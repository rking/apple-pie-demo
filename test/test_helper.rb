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
