require_relative '../lib/universe'

FactoryGirl.define do

  factory :apple_pie do
    before :create do
      Universe.new
    end
  end
end
