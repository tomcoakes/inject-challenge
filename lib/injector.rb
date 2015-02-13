class Array

  def injector(initial_value = self[0])
    block_given? ? yield : initial_value
  end

end