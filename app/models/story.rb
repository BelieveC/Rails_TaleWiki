class Story < ActiveRecord::Base
	belongs_to :genre
	validates :title, presence: true, length:{maximum: 100,minimum: 1}
	validates :source, presence: true,length:{maximum: 50,,minimum: 1}
	validates :body, presence: true, length:{minimum: 25}
end
