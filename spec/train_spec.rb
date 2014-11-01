require 'train'

describe Train do
  context 'moves around' do
  let(:train) {Train.new}

  it 'starts in the depot' do
    expect(train.station).to eq(:depot)
  end
  end
end