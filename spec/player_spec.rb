require 'player'

describe Player do
    subject(:nate) { Player.new('Nate') }
    subject(:jorge) { Player.new('Jorge') }

    it 'creates an instance of the Player class' do
        expect(subject).to be_an_instance_of(Player)
    end

    describe '#name' do
        it 'returns the name' do
            expect(nate.name).to eq 'Nate'
        end
    end

    describe '#hit_points' do
        it 'returns the hit points' do
            expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
        end
    end

    describe '#attack' do
        it 'damages the player' do
            expect(jorge).to receive(:receive_damage)
            nate.attack(jorge)
        end
    end

    describe '#receive_damage' do
        it 'reduces the player hit points' do
            expect { jorge.receive_damage }.to change { jorge.hit_points }.by(-10)
        end
    end
end