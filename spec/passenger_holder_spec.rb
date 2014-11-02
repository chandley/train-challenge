require './lib/passenger_container'

shared_examples 'a passenger container' do

  let(:container) {described_class.new}
  let(:passenger) {double :passenger}

  context 'holds passengers' do

    it 'starts without any passengers' do
      expect(container.passengers).to eq([])
    end

    it 'can hold a passenger' do
      container.receive(passenger)
      expect(container.passengers).to eq([passenger])
    end
  end
end