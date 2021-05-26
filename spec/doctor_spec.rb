require './lib/doctor'

RSpec.describe Doctor do
  describe 'instantiation' do
    it "::new" do
      meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})

      expect(meredith).to be_an_instance_of(Doctor)
    end

    # it "has attributes" do
    #   meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
    #
    #   expect(meredith.name)
    # end
  end
end
