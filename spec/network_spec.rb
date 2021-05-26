require './lib/doctor'
require './lib/hospital'
require './lib/network'

RSpec.describe Network do
  describe 'instantiation' do
    it '::new' do
      gsmn = Network.new("Greater Seattle Medical Network")

      expect(gsmn).to be_an_instance_of(Network)
    end
  end
end
