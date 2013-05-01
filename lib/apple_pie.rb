class ApplePie
  attr_accessor :deliciousness, :crust

  def bake_like_mommy_does
    self.deliciousness = :maximum
    self.crust = :supa_flaky
  end

  alias measure send


  # Add a hack, just enough ActiveRecord for this to work:
  alias save! hash
end
