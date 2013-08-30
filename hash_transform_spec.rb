require 'hash_transform'

describe Hash do

  describe "#map_keys" do

    it "should return with a new Hash whose keys are mapped with the given block" do
      result = { key1: "value1" }.map_keys { |key| "#{key}_mapped".to_sym }
      expect(result).to eq(key1_mapped: "value1")
    end



    it "should not change the original hash" do
      hash = { key1: "value1" }
      hash.map_keys { |key| "#{key}_mapped".to_sym }
      expect(hash).to eq(key1: "value1")
    end

  end



  describe "#map_keys!" do

    it "should return with a Hash whose keys are mapped with the given block" do
      result = { key1: "value1" }.map_keys! { |key| "#{key}_mapped".to_sym }
      expect(result).to eq(key1_mapped: "value1")
    end



    it "should change the Hash's keys with the given block" do
      hash = { key1: "value1" }
      hash.map_keys! { |key| "#{key}_mapped".to_sym }
      expect(hash).to eq(key1_mapped: "value1")
    end

  end



  describe "#map_values" do

    it "should return with a new Hash whose values are mapped with the given block" do
      result = { key1: "value1" }.map_values { |value| "#{value}_mapped" }
      expect(result).to eq(key1: "value1_mapped")
    end



    it "should not change the original hash" do
      hash = { key1: "value1" }
      hash.map_values { |value| "#{value}_mapped" }
      expect(hash).to eq(key1: "value1")
    end

  end



  describe "#map_values!" do

    it "should return with a Hash whose values are mapped with the given block" do
      result = { key1: "value1" }.map_values! { |value| "#{value}_mapped" }
      expect(result).to eq(key1: "value1_mapped")
    end



    it "should change the Hash's values with the given block" do
      hash = { key1: "value1" }
      hash.map_values! { |value| "#{value}_mapped" }
      expect(hash).to eq(key1: "value1_mapped")
    end

  end

end