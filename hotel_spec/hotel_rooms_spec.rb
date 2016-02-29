require 'minitest/autorun'
require 'minitest/rg'
require_relative('../room.rb')
require_relative('../customer.rb')


class TestRoom < Minitest::Test

  def setup

    @single_room = Room.new('single room', 60, 1)
    @double_room = Room.new('double room', 130, 6)

    @guest1 = Guest.new("Derek", 5000)
    @guest2 = Guest.new("Yoshie", 400)
    @guest3 = Guest.new("Claire", 250)

  end




  def test_how_much_is_a_single_room
    assert_equal(60, @single_room.price)
  end


  def test_room_type
    assert_equal("single room", @single_room.type)
  end

  
#customers can only check in if the room is empty and it is the right type.i.e single or double
  def test_check_in
    @single_room.check_in(@guest3)
    assert_equal(@guest3, @single_room.current_guest)
  end



#check out a customer and return current guest of that room to nil
  def test_check_out
    @double_room.check_in(@guest2)
    assert_equal(@guest2, @double_room.current_guest)
  end

 

end