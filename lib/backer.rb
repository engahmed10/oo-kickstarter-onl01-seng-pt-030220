class Backer

attr_reader :name,:backed_projects

   def initialize(name)
      @name=name
      @backed_projects =[]
   end

  def back_project(project)        #project is instance of project ,we will 1-added to backed_projects array
                                 #2-we will add our backer to project
     @backed_projects  << project
     if ! project.backers.include?self
       project.add_backer(self)
     end
  end

end
