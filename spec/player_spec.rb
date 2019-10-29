require 'player'

describe Player do
    subject(:nate) { Player.new('Nate') }
    it 'creates an instance of the Player class' do
        expect(subject).to be_an_instance_of(Player)
    end

    it 'starts with players having 100hp' do
        expect(subject.health).to eq 100
    end

    describe '#name' do
        it 'returns the name' do
            expect(nate.name).to eq 'Nate'
        end
    end
end