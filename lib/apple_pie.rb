require_relative 'universe'
class ApplePie
  attr_accessor :size, :deliciousness, :crust, :ingreedients
  attr :universe

  def initialize
    @universe = Universe.new
  end

  alias measure send
end
