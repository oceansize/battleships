require 'grid'
require 'ship'


describe 'Grid' do
	let (:ship) {Ship.new}
	let (:grid) {Grid.new}

		it 'has width 2' do
			expect(grid.board.count).to eq 2
		end

		it 'can check if a ship is at a coordinate' do
			grid.place(ship,0)
			expect(grid.check(0)).to eq ship
		end

end