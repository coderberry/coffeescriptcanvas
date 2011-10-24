class Tutorials::BreakoutController < ApplicationController
  layout 'tutorial'
  before_filter :load_defaults

  def index
  end

  def draw_a_circle
  end

  def add_some_color
  end

  private

    def load_defaults
      @title = "Make a Breakout clone with HTML5's <canvas> element"
      @steps_path = "/tutorials/breakout/steps"
    end

end
