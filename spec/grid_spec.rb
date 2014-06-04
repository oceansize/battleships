require 'grid'
require 'ship'


describe 'Grid' do
	let (:ship) {Ship.new}
	let (:grid) {Grid.new}

		it 'is created after initialization' do
			expect(grid.board).to_not eq {}
		end

end