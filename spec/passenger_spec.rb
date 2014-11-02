require 'passenger'

describe 'Passenger' do
  context 'rides the trains' do

    let(:station) { double :station}
    let(:passenger) {Passenger.new(station)}    
    let(:other_station) { double :station}

    it 'has a destination' do
      expect(passenger.destination).not_to be_nil
    end  

    it 'knows when at destination' do
      expect(passenger.at_destination?(station)).to be(true)
    end 

    it 'knows when not at destination' do
      expect(passenger.at_destination?(other_station)).to be(false)
    end

  end
end 