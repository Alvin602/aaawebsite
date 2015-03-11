class Event < ActiveRecord::Base
	validates_presence_of :title, :date, :description
	has_many :comments, :dependent => :destroy
  attr_accessible :title, :date, :description, :image
end
