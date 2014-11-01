require 'train'

describe Train do
  context 'is made and moves around' do

    
    let(:depot) {double :station}
    let(:old_street) {double :station}
    let(:coach) {double :coach}
    let(:train) {Train.new(depot)}

    it 'starts in the depot' do
      expect(train.location).to eq(depot)
    end

    it 'can move to another station' do
      train.move_to(old_street)
      expect(train.location).to eq(old_street)
    end

    it 'can add a coach' do
      train.add_coach(coach)
      expect(train.coaches).to eq([coach])
    end

    it 'can remove a coach' do 
      train.add_coach(coach)
      train.remove_coach(coach)
      expect(train.coaches).to eq([])
    end

    # not implemented
    # it 'can only remove the last coach'
    # it 'can only add/remove coaches in the depot'
    # it 'needs a driver before it can move'
    # it 'needs an engine before it can move'

  end

end