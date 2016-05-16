class About

  def initialize(street, building, postcode, phone)
    @street = street
    @building = building
    @postcode = postcode
    @phone = phone
  end

#Street through Phone used by the controller.rb file for the
#separate parts if the address
  def street()
    return "3 ARGYLE HOUSE"
  end

  def building()
    return "CODEBASE"
  end

  def postcode()
    return "e13 zql"
  end

  def phone()
    return "0131558030"
  end

#converts the postcode to all UPPERCASE
  def pcupcase()
    return postcode.upcase
  end

#converts a string of two words to CamelCase by removing the space,
#Capitalising the first letter of the two words and joining them back together.
  def camelcase
    return "code clan".split(' ').collect(&:capitalize).join
  end


end