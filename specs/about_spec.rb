require 'minitest/autorun'
require_relative '../models/about'

class TestAbout < MiniTest::Test

  def setup
    @about = About.new(@street, @building, @postcode, @phone)
  end

  def test_cap_postcode()
    assert_equal("E13 ZQL", @about.pcupcase)
  end

  def test_camelcase
    assert_equal("CodeClan", @about.camelcase )
  end

end