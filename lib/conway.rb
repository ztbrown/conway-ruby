class Conway
  attr_reader :state
  
  def initialize(args)
    @state = args[:state]
  end

  def next
  end

  def to_a
      [
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0]
      ]
  end

end
