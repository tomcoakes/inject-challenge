class Array

  def injector
    yield if block_given?
  end

end