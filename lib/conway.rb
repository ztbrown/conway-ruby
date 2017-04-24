class Conway
  attr_reader :state

  def initialize(args)
    @state = args[:state]
  end

  def next
    Conway.new({state: next_state})
  end

  private

  def next_state
    (0..5).map do |i|
      (0..7).map do |ii|
        living_neighbors = living_neighbors_count(state, i, ii)
        (living_neighbors == 3) || (state[i][ii] == 1 && living_neighbors == 2) ? 1 : 0
      end
    end
  end

  def living_neighbors_count(grid, i, ii)
    cell_value = grid[i][ii]
    outer_index = i == 0 ? 0 : i - 1
    inner_index = ii == 0 ? 0 : ii - 1
    neighbors = grid[outer_index..i+1].map { |inner| inner[inner_index..ii+1]}
    neighbors.flatten.reject {|x| x!=1}.count - cell_value
  end
end
