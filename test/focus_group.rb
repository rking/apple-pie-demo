class Taster < Struct.new :thing_i_look_at, :what_i_expect
  def likes pie
    value = pie.measure thing_i_look_at
    what_i_expect == value
  end
end

class FocusGroup
  PEOPLE = [
    Taster.new(:crust, :supa_flaky),
    Taster.new(:ingreedients, :fresh),
    Taster.new(:size, :very_very_large),
    Taster.new(:deliciousness, :maximum),
  ]
  def self.average_opinion_of pie
    happy = PEOPLE.find_all { |e| e.likes pie }.size
    happy / PEOPLE.size.to_f
  end
end
