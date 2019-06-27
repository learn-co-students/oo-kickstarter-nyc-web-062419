class Project
    attr_accessor :title, :backers

    @@all = []

    def initialize(title)
        @title = title
        @backers = []
        @@all.push(self)
    end

    def self.all
        @@all  
    end


    def add_backer(backer)
        @backers.push(backer)
        backer.backed_projects.push(self)
    end

end