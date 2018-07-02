class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :artist_name, presence: true
  validates :released, inclusion: { in: [ true, false ] }
  validates :release_year, numericality: { only_integer: true }
  # validate :release_year_presence

  # def release_year_presence
  #   current_year = Date.today.year
  #   if self.released && self.release_year.class != Fixnum && self.release_year <= current_year
  #     errors.add(:release_year, "Must be valid year")
  #     return false
  #   else
  #     true
  #   end
  # end

end
