#Created a new model for this as it works separately from the about file
#utliised the method from the about file
class CamelCase

  def initialize(word)
    @word = word
  end

  def camel
    return @word.split(' ').collect(&:capitalize).join
  end
end