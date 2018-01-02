class ObservatoryController < ApplicationController

  def index

    @constellations = Constellation.all

  end

end
