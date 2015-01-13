class Package < ActiveRecord::Base
	belongs_to :user
	belongs_to :sender
	has_many :statuses
	validates :reference, :track, presence: true
end
