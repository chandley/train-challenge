require './lib/passenger_container'

shared_examples 'a passenger container' do

  let(:container) {described_class.new}
  let(:passenger) {double :passenger}

    def fill_container
      container.capacity.times {container.board(passenger)}
    end

    it 'starts without any passengers' do
      expect(container.passengers).to eq([])
    end

    it 'can board a passenger' do
      container.board(passenger)
      expect(container.passengers).to include(passenger)
    end

    it 'can release a passenger' do
      container.board(passenger)
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

    it 'can be full' do
      fill_container
      expect(container).to be_full
    end

    it 'can\'t board a passenger when full' do
      fill_container
      expect( lambda{container.board(passenger)}).to raise_error(RuntimeError)
    end

    it 'can\'t release a passeneger who isn\'t in the container' do
      expect( lambda{container.release(passenger)}).to raise_error(RuntimeError)
    end

end