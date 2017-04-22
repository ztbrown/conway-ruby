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
    Conway.new({state: next_state})
  end

end
