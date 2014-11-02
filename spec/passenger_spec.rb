require 'passenger'

describe 'Passenger' do
  context 'rides the trains' do

    let(:passenger) {Passenger.new}
    let(:station) { double :station}

    it 'has a destination' do
      expect(passenger.destination).not_to be_nil
    end   

  end
end 