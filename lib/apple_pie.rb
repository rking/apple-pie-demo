class ApplePie
  attr_accessor :deliciousness, :crust

  def bake_like_mommy_does
    self.deliciousness = :ok
    self.crust = :soggy
  end

  alias measure send









  # Add a hack, just enough ActiveRecord for this to work:
  alias save! hash
end
