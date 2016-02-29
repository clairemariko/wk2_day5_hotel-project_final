class Hotel

  attr_reader :rooms, :till, :guests

  def initialize(rooms, till, guests)
    @rooms = rooms
    @till = 0
    @guests = guests
  end



  def total_rooms
    @rooms.length
  end


  def total_revenue
    prices = @rooms.map { |room| room.price }
    return prices.inject { |sum, value| sum + value }
  end

  def till_starts_at_zero
    return @till
  end

  def check_in(guest)
    if @current_guest.nil? && @capacity.nil?
      @current_guest = guest
    end
  end

  def updated_till_value(rooms)
    @till += rooms.price
  end

  def updated_guest_wallet(guest, room)
    guest.guest_wallet -= room.price
    return guest.guest_wallet
  end

  #checking out, will delete the guest from current_guest and return it to nil

  def check_out(guest)
    @current_guest = nil
  end




  #


end