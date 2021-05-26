class Doctor
  attr_reader :name,
              :specialty,
              :education,
              :salary
              
  def initialize(dr_info)
    @name = dr_info[:name]
    @specialty = dr_info[:specialty]
    @education = dr_info[:education]
    @salary = dr_info[:salary]
  end
end
