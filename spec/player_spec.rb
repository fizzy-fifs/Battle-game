require 'player'
describe Player do
    subject(:john) { Player.new("John") }
    subject(:peter) { Player.new("Peter") }

    it 'has a base hp of 60' do
        expect(subject.hp).to eq Player::BASEHP
    end
    
    it 'attacks the player' do
        expect(peter).to receive(:receive_damage)
        john.attack(peter)
    end

    it 'reduces the player hit points' do
        expect {peter.receive_damage}.to change {peter.hp}.by(-10)
    end

    describe '#name' do
        it 'returns the name' do
            expect(john.name).to eq "John"
        end
    end
end