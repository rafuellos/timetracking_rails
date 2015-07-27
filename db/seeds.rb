Project.create name: 'Irionhack', description: 'This is the first project for Ironhack venture'

Project.create name: 'Time tracking app'

Project.create name: 'Recipes', description: 'Track my favourite recipes'

22.times do |project| 
	Project.create name: 'Project ' + project.to_s, description: 'This is project number ' + project.to_s
end
