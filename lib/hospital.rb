class Hospital
  attr_reader :name,
              :chief_of_surgery,
              :doctors,
              :specialties

  def initialize(name, chief_of_surgery, doctors = [meredith, alex])
    @name = name
    @chief_of_surgery = chief_of_surgery
    @doctors = doctors
    @specialties = []
  end

  def total_salary
    @salaries = []
    @doctors.each do |doctor|
      @salaries << doctor.salary
    end
    @salaries.sum
  end

  # def lowest_paid_doctor
  #   @doctors.each do |doctor|
  #     doctor.salary.min
  #   end
  # end

  def specialties
    @doctors.each do |doctor|
      @specialties << doctor.specialty
    end
    @specialties
  end
end
