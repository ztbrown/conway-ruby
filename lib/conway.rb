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
        living_neighbors = living_neighbors_count(state, i, ii)
        if (living_neighbors >= 2 && living_neighbors <= 3)
          next_state[i][ii] = 1
        end
      end
    end

    Conway.new({state: next_state})
  end

  def living_neighbors_count(grid, i, ii)
    cell_value = grid[i][ii]
    outer_index = i == 0 ? 0 : i - 1
    inner_index = ii == 0 ? 0 : ii - 1
    neighbors = grid[outer_index..i+1].map { |inner| inner[inner_index..ii+1]}
    neighbors.flatten.reject {|x| x!=1}.count - cell_value
  end
end
