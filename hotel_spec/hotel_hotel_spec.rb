require 'minitest/autorun'
require 'minitest/rg'
require_relative('../hotel')
require_relative('../customer')
require_relative('../room')

class TestHotel < Minitest::Test

  def setup
    @room_1 = Room.new('single', 60, 1)
    @room_2 = Room.new('single', 60, 2)
    @room_3 = Room.new('single', 60, 3)
    @room_4 = Room.new('single', 60, 4)
    @room_5 = Room.new('single', 60, 5)

    @room_6 = Room.new('double', 130, 6)
    @room_7 = Room.new('double', 130, 7)
    @room_8 = Room.new('double', 130, 8)
    @room_10 = Room.new('double', 130, 10)

    @guest1 = Guest.new("Ryan", 1000)
    @guest2 = Guest.new("Claire", 400)
    @guest3 = Guest.new("The Andersons",1300)

   


    @rooms = [@room_1, @room_2, @room_3, @room_4, @room_5, @room_6, @room_7, @room_8, @room_9, @room_10]  

    @guests = [@guest1, @guest2, @guest3]

    @hotel = Hotel.new(@rooms, 0 ,@guests)
  end

  def test_total_rooms
    result = @hotel.total_rooms
    assert_equal( 10, result )
  end

# ####I broke my total revenue code and i cant get it to define prices#####

  def test_total_revenue
      result = @hotel.total_revenue
      assert_equal( 950, result )
  end
 
  def test_hotel_till_starts_at_zero
      assert_equal(0, @hotel.till)
  end

  def test_check_in
      @single_room.check_in(@guest3)
      assert_equal(@guest3, @room_1.current_guest)
  end

  def test_updated_till_value
      assert_equal(60, @hotel.updated_till_value(@room_4))
  end

  def test_updated_guest_wallet
      assert_equal(940, @hotel.updated_guest_wallet(@guest1, @room_4))
  end

 #check out a customer and return current guest of that room to nil
   def test_check_out
       @double_room.check_in(@guest2)
       assert_equal(@guest2, @double_room.current_guest)
   end

    
end