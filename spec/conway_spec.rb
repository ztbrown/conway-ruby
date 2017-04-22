require_relative '../lib/conway'
describe Conway do
  context 'Rule 1: Underpopulation' do
    it 'should not regenerate cells when all cells are dead' do
      input_state = [
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0]
      ]
      conway = Conway.new({state: input_state})
      expect(conway.next.state).to eq(input_state)
    end
    it 'should not regenerate cell (0,0) with no live neighbors' do
      input_state = [
        [1,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0]
      ]
      conway = Conway.new({state: input_state})
      expect(conway.next.state[0][0]).to eq(0)
    end
  end
end
