require './lib/simple_example'


describe 'Battleships' do
	let (:ship) {Ship.new}
	let (:grid) {Grid.new}

	context 'Ship' do

		it 'is created upon initialization' do
			expect(ship).to eq 2
		end

		it 'is present' do
			expect(ship.position).to_not eq []
		end

	end

	context 'Grid' do
		it 'has two elements' do
			expect(grid.size.count).to eq 2
		end

		it'Has a boundary' do
			expect(grid.size[3]).to eq(nil)
		end
	end

end