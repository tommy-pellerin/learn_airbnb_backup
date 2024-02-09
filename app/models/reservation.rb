class Reservation < ApplicationRecord
  validates :end_date, comparison: { greater_than: :start_date }
  
  def duration
    self.end_date - self.start_date
  end

end
