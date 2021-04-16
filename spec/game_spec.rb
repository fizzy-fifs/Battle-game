require 'game'
describe Game do
    let(:john) { Player.new("John") }
    let(:peter) { Player.new("Peter") }


    it { expect(Game.new).to be_an_instance_of(Game) }

    describe '#attack(player)' do

        it 'responds to attack player' do
            expect(subject).to respond_to(:attack).with(1).argument
        end

        it 'attacks player' do
            expect { Game.new.attack(peter) }.to change { peter.hp }.by(-10)
        end
    end
end
