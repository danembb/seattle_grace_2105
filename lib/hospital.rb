class Hospital
  attr_reader :name,
              :chief_of_surgery,
              :doctors

  def initialize(name, chief_of_surgery, doctors = [meredith, alex])
    @name = name
    @chief_of_surgery = chief_of_surgery
    @doctors = doctors
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
end
