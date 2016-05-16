class About

  def initialize(street, building, postcode, phone)
    @street = street
    @building = building
    @postcode = postcode
    @phone = phone
  end

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

  def pcupcase()
    return postcode.upcase
  end

  def camelcase
    return "code clan".split(' ').collect(&:capitalize).join
  end


end