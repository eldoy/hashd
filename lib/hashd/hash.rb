class Hash

  attr_accessor :dot

  def to_dot
    dotify(self); self
  end

  def method_missing(name, *args, &block)
    return super(name, *args, &block) unless dot

    if name[-1] == '='
      self[name[0..-2].to_sym] = args[0]
    else
      self[name] || self[name.to_s]
    end
  end

  private

  # Set up each hash for dot syntax
  def dotify(h)
    h.dot = true; h.keys.each{|key| dotify(h[key]) if h[key].is_a?(::Hash)}
  end

end
