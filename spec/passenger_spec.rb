require 'passenger'

describe 'Passenger' do
  context 'rides the trains' do

    let(:passenger) {Passenger.new}
    let(:station) { double :station}


    it 'has a destination' do
      expect(passenger.destination).not_to be_nil
    end

    it 'can touch in at a station' do
      expect(station).to receive(:board)
      passenger.touch_in(station)
    end


    

  end
end 