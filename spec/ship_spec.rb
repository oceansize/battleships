require 'ship'
require 'grid'

describe 'Ship' do
	let (:ship) {Ship.new}
	let (:grid) {Grid.new}

		it 'can be placed' do
			expect(grid.place(ship,0)).to eq [ship, :sea]
		end

		it 'should not be hit when initialized' do
			expect(ship.hit?).to_not be_true
		end

		it 'can be hit' do
			ship.hit!
			expect(ship.hit?).to be_true
		end

		it 'can be sunk' do
			ship.hit!
			expect(ship.sunk?).to be_true
		end
end