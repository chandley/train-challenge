require 'train'

describe Train do
  context 'moves around' do

    
    let(:depot) {double :station}
    let(:old_street) {double :station}
    let(:train) {Train.new(depot)}

    it 'starts in the depot' do
      expect(train.location).to eq(depot)
    end

    it 'can move to another station' do
      train.move(old_street)
      expect(train.location).to eq(old_street)
    end

  end

end