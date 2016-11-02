class Chatroom < ApplicationRecord
	has_many :chatroomusers
	has_many :users, through: :chatroomusers
	has_many :messages
end
