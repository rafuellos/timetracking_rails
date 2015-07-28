
22.times do |project| 
	Project.create name: "Project #{project}", description: "This is project number #{project}"
end

Project.create name: 'Irionhack', description: 'This is the first project for Ironhack venture'

Project.create name: 'Time tracking app'

Project.create name: 'Recipes', description: 'Track my favourite recipes'
