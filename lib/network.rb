class Network
  attr_reader :name,
              :hospitals

  def initialize(name)
    @name = name
    @hospitals = []
    @doctors_by_hospital = {}
  end

  def add_hospital(hospital)
    @hospitals << hospital
  end

  def doctors_by_hospital
    @hospitals.each do |hospital|

end
