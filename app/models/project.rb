class Project < ActiveRecord::Base
	has_many :entries
	
	validates :name, presence: true 
	validates :name, uniqueness: true
	validates :name, length: {maximum: 30}
	validates :name, format: {with: /\A[a-zA-Z0-9\s]+\z/}

	def self.iron_find(id)
		where(id: id).first	
	end

	def self.clean_all
		projects = where("created_at <?", Date.current - 1.week)
		projects.delete_all
	end
	def self.last_created_projects(number)
		order(created_at: :desc).limit(number)
	end
end
