class Hash

  attr_accessor :use_dot_syntax

  def to_dot
    dotify(self); self
  end

  # Using method missing.
  def method_missing(name, *args, &block)
    return super(name, *args, &block) unless use_dot_syntax

    # Check for value first or assign
    if name[-1] == '='
      return self[name[0..-2].to_sym] = args[0]
    elsif (val = self[name] || self[name.to_s])
      return val
    end

    # Pass to methods if value not found
    return super(name, *args, &block) if self.respond_to?(name)
  end

  private

  # Set up each hash for dot syntax
  def dotify(h)
    h.use_dot_syntax = true; h.keys.each{|key| dotify(h[key]) if h[key].is_a?(::Hash)}
  end

end
