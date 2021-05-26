require './lib/doctor'
require './lib/hospital'

RSpec.describe Hospital do
  describe 'instantiation' do
    it '::new' do
      meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
      alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
      seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

      expect(seattle_grace).to be_an_instance_of(Hospital)
    end

    it 'has attributes' do
      meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
      alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
      seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

      expect(seattle_grace.name).to eq("Seattle Grace")
      expect(seattle_grace.chief_of_surgery).to eq("Richard Webber")
      expect(seattle_grace.doctors).to eq([meredith, alex])
    end
  end

  describe 'methods' do
    it 'can display total salary of doctors' do
      meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
      alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
      seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

      expect(seattle_grace.total_salary).to eq(190000)
    end

    # it 'can find the lowest paid doctor' do
    #   meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
    #   alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
    #   seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])
    #
    #   expect(seattle_grace.lowest_paid_doctor).to eq("Alex Karev")
    # end

    it 'can display doctor specialties' do
      meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
      alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
      seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

      expect(seattle_grace.specialties).to eq(["General Surgery", "Pediatric Surgery"])
    end
  end
end
