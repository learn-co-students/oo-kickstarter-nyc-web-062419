require "pry"

class Project
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(pledger)
    @backers << pledger
    pledger.backed_projects << self
  end
end