require './lib/passenger_container'

shared_examples 'a passenger container' do

  let(:container) {described_class.new}
  let(:passenger) {double :passenger}

  # context 'holds passengers' do

    it 'starts without any passengers' do
      expect(container.passengers).to eq([])
    end

    it 'can hold a passenger' do
      container.receive(passenger)
      expect(container.passengers).to include(passenger)
    end
    it 'can release a passenger' do
      container.receive(passenger)
      container.release(passenger)
      expect(container.passengers).to eq([])
    end

    it 'has a capacity' do
      expect(container.capacity).not_to be_nil
    end

    it 'allows capacity to be set' do
      container.capacity = 2
      expect(container.capacity).to eq(2)
    end


  # end
end