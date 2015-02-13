class Array

  def injector(accum = 0)
    return nil if self.empty?
    if block_given?
      self.each {|element| accum = yield(accum, element)}; accum
    elsif accum.is_a?(Symbol)
      result = 0
      self.each {|element| result = result.send(accum, element)}; result
    else
      accum = self.first if accum == 0; accum
    end
  end

end