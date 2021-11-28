class AcademicsController < ApplicationController
  def index
    #   render html: "We at academics_controller.rb.\n
    #    Comment these two lines  to learn more"
    #test
  end

  def about
    @about = "about method is in app/controllers/academics_controller.rb\n
    This line is written there as an instance variable's content"
  end

  def test
    render html: "We at academics_controller.rb # test\n"
  end
end
