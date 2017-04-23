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
  context 'Rule 3: Propagation' do
    it 'should propagate cell (0,1) with exactly two live neighbors to the left and right' do
      input_state = [
        [1,1,1,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0]
      ]
      conway = Conway.new({state: input_state})
      expect(conway.next.state[0][0]).to eq(0)
      expect(conway.next.state[0][1]).to eq(1)
      expect(conway.next.state[0][2]).to eq(0)
    end
    it 'should propagate cell (1,0) with exactly two live neighbors to the top and bottom' do
      input_state = [
        [1,0,0,0,0,0,0,0],
        [1,0,0,0,0,0,0,0],
        [1,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0]
      ]
      conway = Conway.new({state: input_state})
      expect(conway.next.state[0][0]).to eq(0)
      expect(conway.next.state[1][0]).to eq(1)
      expect(conway.next.state[2][0]).to eq(0)
    end
    it 'should propagate cell (1,1) with exactly two live neighbors to the top-left and bottom-right' do
      input_state = [
        [1,0,0,0,0,0,0,0],
        [0,1,0,0,0,0,0,0],
        [0,0,1,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0]
      ]
      conway = Conway.new({state: input_state})
      expect(conway.next.state[0][0]).to eq(0)
      expect(conway.next.state[1][1]).to eq(1)
      expect(conway.next.state[2][2]).to eq(0)
    end
  end
end
