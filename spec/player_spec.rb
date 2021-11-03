require 'player'

describe Player do
    subject(:andy) {Player.new('Andy')}
    subject(:dean) {Player.new('Dean')}

    describe '#name' do
        it 'returns the name' do
            expect(andy.name).to eq 'Andy'
        end
    end

    describe '#hit points' do
        it 'returns the hit points' do
            expect(andy.hit_points).to eq described_class::DEFAULT_HIT_POINTS
        end
    end

    describe '#attack' do
        it 'damages the player' do
          expect(andy).to receive(:receive_damage)
          Game.new.attack(andy)
        end
    end

    describe '#receive damage' do
        it 'reduces the playes hit points' do
            expect { andy.receive_damage }.to change { andy.hit_points }.by(-10)
        end
    end
end