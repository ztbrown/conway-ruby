class Conway
  attr_reader :state

  def initialize(args)
    @state = args[:state]
  end

  def next
    next_state = [
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0]
    ]

    for i in 0..(state.length-1) do
      for ii in 0..(state[i].length-1) do
        outer_index = i == 0 ? 0 : i - 1
        inner_index = ii == 0 ? 0 : ii - 1
        neighbors = state[outer_index..i+1].map { |inner| inner[inner_index..ii+1]}
        if (neighbors.flatten.reject {|x| x!=1}.count == 3)
          next_state[i][ii] = 1
        end
      end
    end

    Conway.new({state: next_state})
  end
end
