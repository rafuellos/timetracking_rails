class Entry < ActiveRecord::Base
	belongs_to :project
	validates :hours, presence: true, numericality: {only_integer: true, greater_than: 0}
	validates :minutes, presence: true, numericality: {only_integer: true, greater_than: 0}
	validates :date, presence: true
	#validates_associated :projects
	validates :project_id, presence: true

end
