class Backer
    attr_reader :name, :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        # @backed_projects << project
        # # <Projefct #dfjajfi >
        # [<Backer #f88fjfj>]
        # project.backers << self
        project.add_backer(self)
        @backed_projects << project
    end

    
end