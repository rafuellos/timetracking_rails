
22.times do |project| 
	project = Project.create name: "Project #{project}", description: "This is project number #{project}"
	project.entries.create(hours: 2, minutes: 45)
end

project23 = Project.create name: 'Irionhack', description: 'This is the first project for Ironhack venture'

project24 = Project.create name: 'Time tracking app'

project25 = Project.create name: 'Recipes', description: 'Track my favourite recipes'



project23.entries.create hours: 1, minutes: 23,
						 comments: 'Review and update project #{project.id}', 
						 date: Date.current - 1.day

project23.entries.create hours: 2, minutes: 07,
						 comments: 'Review and update project #{project.id}', 
						 date: Date.current

project24.entries.create hours: 0, minutes: 12,
						 comments: 'Review and update project #{project.id}', 
						 date: Date.current - 2.days

#Entry.create(project_id: project23.id)