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
      for ii in 1..(state[i].length-2) do
        if state[i][ii] == 1 && state[i][ii-1] == 1 && state[i][ii+1] == 1
          next_state[i][ii] = 1
        end
      end
    end

    Conway.new({state: next_state})
  end
end
