class String
  def to_class
    Object.const_get self
  end

  def to_method
    self.gsub(/\W+/,'_').downcase.to_sym
  end
end