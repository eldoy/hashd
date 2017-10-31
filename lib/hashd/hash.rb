class Hash

  attr_accessor :use_dot_syntax

  def to_dot
    dotify(self); self
  end

  # Using method missing.
  def method_missing(name, *args, &block)
    return super unless use_dot_syntax

    # Check for value first or assign
    if name[-1] == '='
      return self[name[0..-2].to_sym] = args[0]
    elsif (val = self[name] || self[name.to_s])
      return val
    end

    # Pass to methods if value not found
    return super if self.respond_to?(name)
  end

  private

  # Set up each hash for dot syntax
  def dotify(h)
    h.use_dot_syntax = true; h.keys.each{|k| dotify(h[k]) if h[k].is_a?(::Hash)}
  end

end
