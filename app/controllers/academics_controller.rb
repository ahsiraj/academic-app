class AcademicsController < ApplicationController
  def index
    #   render html: "We at academics_controller.rb.\n
    #    Comment these two lines  to learn more"
    #test
  end

  def test
    render html: "We at academics_controller.rb # test\n"
  end
end
