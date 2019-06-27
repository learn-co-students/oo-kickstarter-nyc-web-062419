class Backer
    attr_accessor :name, :backed_projects

    @@all = []

    def initialize (name)
        @name = name
        @backed_projects = []
        @@all.push(self)
    end

    def self.all
        @@all  
    end 

    def back_project(project)
        @backed_projects.push(project)
        project.backers << self
    end
end

# describe 'Backer - More Advanced #back_project' do
#   it 'also adds the backer to the project\'s backers array' do

# logan = Backer.new("Logan")
# hoverboard = Project.new("Awesome Hoverboard")
# project = Project.new(title)
# logan.back_project(hoverboard)

