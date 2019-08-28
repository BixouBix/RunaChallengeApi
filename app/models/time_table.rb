class TimeTable < ApplicationRecord
  belongs_to :user
  enum status: [:open, :closed]
  
  def set_status
    status = if checkout.nil?
      0
    else
      raise Exception.new('Trying to checkout without checking in!') if checkin.nil?
      raise Exception.new('Checkout is before checkin') if (checkout.to_i - checkin.to_i) < 0
      1
    end
    update(seconds: checkout.to_i - checkin.to_i, status: status)
  end
end
