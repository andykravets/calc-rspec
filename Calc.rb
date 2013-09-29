class Calc
  def initialize(*input)
    if input.size==0
      raise "You are retard i need more numbers"
    end
    input.each do |el|
      unless el.is_a?(Numeric)
        raise "You are retard and can't calculate not numbers"
      end
    end
    @args = input
  end

  def plus
    @args.inject(0, &:+)
  end

  def minus
    @args.inject(0, &:-)
  end

  def clear
    @args.clear
  end
end
