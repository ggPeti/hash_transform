require "hash_transform/version"

class Hash

  def map_keys!
    keys.each { |key| self[yield(key)] = delete key }
    self
  end


  def map_keys(&block)
    dup.map_keys! &block
  end


  def map_values!
    each { |key, value| self[key] = yield(value) }
    self
  end


  def map_values(&block)
    dup.map_values! &block
  end

end