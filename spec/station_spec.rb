require 'station'

describe Station do
  let(:station) {Station.new}
  context 'holds passengers' do
    it 'starts without any passengers' do
      expect(station.passengers).to eq([])
    end
  end
end

