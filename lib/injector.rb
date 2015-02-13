class Array

  def injector(initial_value = 0)
    if block_given?
      self.each {|element| initial_value = yield(initial_value, element)}
      initial_value
    else
      initial_value = self[0] if initial_value == 0
      initial_value
    end
  end

end