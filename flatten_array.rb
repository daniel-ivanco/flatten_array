module FlattenArray
  def self.call(array)
    array.inject([]) do |result, item|
      if item.kind_of? Array
        result + call(item)
      else
        result << item
      end
    end
  end
end
