class ApplePie
  attr_accessor :deliciousness, :crust

  def bake_like_mommy_does
    self.deliciousness = :maximum
    self.crust = :supa_flaky
  end

  alias measure send
end
