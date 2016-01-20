class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :facebook_user
  belongs_to :listing 
  validates_presence_of :start_date, :end_date
  validate :reservation_dates_must_make_sense
  validates_uniqueness_of :start_date, :scope => :end_date

  # def intersects
  # 	byebug
	 #  to = Reservation.find_by(end_date: params[:end_date])
	 #  from = Reservation.find(start_date: params[:start_date])
	 #  Reservation.where('start_date > ? OR end_date < ?', to, from).count > 0
  # end

  private
  def reservation_dates_must_make_sense
    if end_date <= start_date
      errors.add(:start_date, 'has to be before the end date')
    end
  end
#   validate :start_date_is_date?

# private

# def start_date
#    if !start_date.is_a?(Date)
#      errors.add(:start_date, 'must be a valid date') 
#    end
# end
  # validates :start_date, presence: true
  # validates :end_date, presence: true, date: { :after_or_equal_to => :start_date}
  # attr_accessible :user_id, :listing, :image
  # mount_uploader :image, AvatarUploader

end
