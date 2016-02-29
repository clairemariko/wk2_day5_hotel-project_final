require 'minitest/autorun'
require 'minitest/rg'
require_relative'../customer'



class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Ryan", 1000)
    @guest2 = Guest.new("Emma", 200)
    @guest3 = Guest.new("Drew", 500)

    @guests = [@guest1, @guest2, @guest3]

  end

  def test_guest_name
    assert_equal("Ryan", @guest1.guest_name)
  end

  def test_guest_wallet
    assert_equal(1000, @guest1.guest_wallet)
  end


end