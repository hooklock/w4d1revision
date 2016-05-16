class CamelCase

  def initialize(word)
    @word = word
  end

  def camel
    return @word.split(' ').collect(&:capitalize).join
  end
end