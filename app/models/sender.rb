class Sender < ActiveRecord::Base
	has_many :packages
	validates :name, :description, presence: true
end
