require './lib/version1'


describe 'Battleships' do
	let (:ship) {Ship.new}
	let (:grid) {Grid.new}

	context Ship do

		it 'can be placed' do
			expect(grid.place(ship,0)).to eq [ship, :sea]
		end

	end

	context Grid do

		# it 'has height 1' do
		# 	expect(grid.board.count).to eq 1
		# end

		it 'has width 2' do
			expect(grid.board.count).to eq 2
		end

	end

end