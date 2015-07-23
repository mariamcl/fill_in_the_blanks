class Post < ActiveRecord::Base
	validates :title, :bru_name, presence: true
	validates :body, presence: true, length: { minimum: 5 }
end
