class Reservation < Hotel

  attr_reader :name, :number_guests, :date_start, :date_end

  def initialize
    @name = name
    @number_guests = number_guests
    @date_start = date_start
    @date_end = date_end
    
  end


 

# reserving rooms for guests
  def reserve_room(guest_name, room_number)
    guest = @guests[guest_name]
    room = @rooms.delete(room_number)
    guest.reserve(room)
  end

# listing the rooms currently reserved
  def list_reserved_rooms
    unless @rooms.empty?
      @rooms.each do |key, room|
      puts room.report_lister
      end
    end
  end

end



# # confirming the reservation to the guest
#   def reservation_confirm
#     if @number_guests == 1
#     "#{name}, thank you for reserving a room at the Budapest Hotel. It has been confirmed from #{date_start} until #{date_end}. It will be an unforgettable experience!"
#     else
#     "#{name}, thank you for your reservation at the Budapest Hotel. It has been confirmed for #{size} people from #{date_start} until #{date_end}. You shouled check out the spa to add some magic to your stay!"
#     end
#   end
