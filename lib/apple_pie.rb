class ApplePie
  attr_accessor :size, :deliciousness, :crust

  def bake_like_mommy_does
    self.size = :very_very_big
    self.deliciousness = :ok
    self.crust = :soggy
  end









  alias measure send

  # Add a hack, just enough ActiveRecord for this to work:
  alias save! hash
end
