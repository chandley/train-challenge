require 'train'

describe Train do
  context 'moves around' do

    
    let(:depot) {double :station}
    let(:old_street) {double :station}
    let(:coach) {double :coach}
    let(:train) {Train.new(depot)}

    it 'starts in the depot' do
      expect(train.location).to eq(depot)
    end

    it 'can move to another station' do
      train.move(old_street)
      expect(train.location).to eq(old_street)
    end

    it 'can add a coach' do
      train.add_coach(coach)
      expect(train.coaches).to eq([coach])
    end

    it 'can remove a coach' do # maybe only last coach
      train.add_coach(coach)
      train.remove_coach(coach)
      expect(train.coaches).to eq([])
    end

  end

end