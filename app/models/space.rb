class Space < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_address,
                  against: [ :name, :address ],
                  using: {
                    tsearch: { prefix: true }
                  }
end
