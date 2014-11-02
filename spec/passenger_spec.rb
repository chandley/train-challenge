require 'passenger'

describe 'Passenger' do
  context 'rides the trains' do

    let(:passenger) {Passenger.new}
    let(:station) { double :station}
    let(:other_station) { double :station}

    it 'has a destination' do
      expect(passenger.destination).not_to be_nil
    end  

    it 'knows when at destination' do
      expect(passenger.at_destination?(station)).to be(true)
    end 

  end
end 