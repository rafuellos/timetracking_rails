class Project < ActiveRecord::Base
	def self.iron_find(id)
		where(id: id).first	
	end

	def self.clean_all
		projects = where("created_at <?", Date.current - 1.week)
		projects.delete_all
	end
end
