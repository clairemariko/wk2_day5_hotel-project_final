class Guest

  attr_reader :guest_name
  attr_accessor :guest_wallet

  def  initialize(guest_name, guest_wallet)
    @guest_name = guest_name
    @guest_wallet = guest_wallet
  end



end