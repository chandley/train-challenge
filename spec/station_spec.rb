require 'station'
require_relative 'passenger_container_spec'

describe Station do
  it_behaves_like 'a passenger container'

  context 'with passenger' do
  let(:station) {Station.new}
  let(:passenger) {double :passenger}

    it 'allows passenger to touch in' do
      station.touch_in(passenger)
      expect(station.passengers).to include(passenger)
    end

  end
end

