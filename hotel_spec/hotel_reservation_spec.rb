require 'minitest/autorun'
require 'minitest/rg'
require_relative('../reservations')


class TestReservations < Minitest::Test

  def setup

    @guest1 = Guest.new("Ryan", 1000)
    @guest2 = Guest.new("Emma", 200)
    @guest3 = Guest.new("Drew", 500)


    @single_room = Room.new('single room', 60, 1)
    @double_room = Room.new('double', 130, 6)

    @rooms = [@single_room, @double_room]



    @guests = [@guest1, @guest2, @guest3]




  end

  def test_reserve_room
end





end

