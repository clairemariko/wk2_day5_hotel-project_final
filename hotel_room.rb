class Room

  attr_reader :number, :type, :price, :current_guest, :capactiy, 


  def initialize( type, price, number)
    @type = type
    @price = price
    @number= number
    @capacity = nil
    @current_guest = nil
  end

#customers can only check in if the room is empty and it is the right type.i.e single or double
  def check_in(guest)
    if @current_guest.nil? && @capacity.nil?
      @current_guest = guest
    end
  end

#checking out, will delete the guest from current_guest and return it to nil

  def check_out(guest)
    @current_guest = nil
  end


end