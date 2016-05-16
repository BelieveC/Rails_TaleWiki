class Genre < ActiveRecord::Base
	has_many :stories
	validates :name, presence: true,length:{minimum: 5,maximum: 25},uniqueness: true
	validates :description, presence: true,length:{minimum: 25}
end
