require_relative '../lib/conway' 

describe Conway do
  context 'Rule 1: Underpopulation' do 
    it 'should not regenerate cells when all cells are dead' do
      current_grid = [
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0]
      ]
      state = Conway.new({state: current_grid})
      state.next
      expect(state.to_a).to eq(current_grid)
    end
  end
end
