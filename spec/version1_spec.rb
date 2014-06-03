require './lib/version1'


describe 'Battleships' do
	let (:ship) {Ship.new}
	let (:grid) {Grid.new}

	# context 'Ship' do

	# 	it 'is created upon initialization' do
	# 		expect(ship).to eq 2
	# 	end

	# 	it 'is present' do
	# 		expect(ship.position).to_not eq []
	# 	end

	# end

	context Grid do

		it 'has height 1' do
			expect(grid.board.count).to eq 1
		end

		it 'has width 2' do
			expect(grid.board[0].count).to eq 2
		end

	end

end