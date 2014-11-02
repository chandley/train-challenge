require 'station'
require_relative 'passenger_container_spec'

describe Station do
  it_behaves_like 'a passenger container'

  context 'with passenger' do
  let(:station) {Station.new}
  let(:passenger) {double :passenger}

    it 'passenger can touch in with cash 20' do
      allow(passenger).to receive(:cash).and_return(20)
      station.touch_in(passenger)
      expect(station.passengers).to include(passenger)
    end

    it 'passenger can touch out' do
      station.board(passenger)
      station.touch_out(passenger)
      expect(station.passengers).to_not include(passenger)
    end

    it 'knows which passengers are at destination' do
      station.board(passenger)
      allow(passenger).to receive(:at_destination?).and_return(true)
      expect(station.passengers_at_destination).to include(passenger)
    end 

    it 'touches out passengers at destination' do
      station.board(passenger)
      allow(passenger).to receive(:at_destination?).and_return(true)
      station.touch_out_passengers_at_destination
      expect(station.passengers).to_not include(passenger)
    end

    it 'passenger can\'t touch in if cash = 0' do
      allow(passenger).to receive(:cash).and_return(0)
      expect( lambda{station.touch_in(passenger)}).to raise_error(RuntimeError)
    end
  end
end

