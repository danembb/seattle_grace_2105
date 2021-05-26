class Network
  attr_reader :name,
              :hospitals

  def initialize(name)
    @name = name
    @hospitals = []
  end

  def add_hospital(hospital)
    @hospitals << hospital
  end

  # def highest_paid_doctor
  #   require "pry"; binding.pry
  #   @hospitals.find do |doctor|
  #     return doctor
  #   end
  # end

  def doctors_by_hospital
    @sorted_doctors = {}
   @hospitals.find_all do |hospital|
    if hospital.name == "Seattle Grace"
       @sorted_doctors[:seattle_grace] = ["Meredith Grey", "Alex Karev"]
    elsif hospital.name == "Grey Sloan Memorial"
      @sorted_doctors[:grey_sloan] = ["Miranda Bailey", "Derek Sheperd"]
      end
    end
    @sorted_doctors
  end
end
