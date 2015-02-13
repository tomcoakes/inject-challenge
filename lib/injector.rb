class Array

  def injector(initial_value = 0)
    return nil if self.empty?
    if block_given?
      self.each {|element| initial_value = yield(initial_value, element)}
      initial_value
    elsif initial_value.is_a?(Symbol)
      result = 0
      self.each {|element| result = result.send(initial_value, element)}
      result
    else
      initial_value = self[0] if initial_value == 0
      initial_value
    end
  end

end