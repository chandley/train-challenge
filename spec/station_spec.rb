require 'station'

describe Station do

  let(:station) {Station.new}
  let(:passenger) {double :passenger}

  context 'holds passengers' do

    it 'starts without any passengers' do
      expect(station.passengers).to eq([])
    end

    it 'can hold a passenger' do
      station.receive(passenger)
      expect(station.passengers).to eq([passenger])
    end
  end
end

