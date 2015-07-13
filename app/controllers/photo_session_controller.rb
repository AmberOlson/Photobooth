class PhotoSessionController < ApplicationController

  def index
    @PhotoSessions = PhotoSession.all
  end

  def photobooth
  end

  
end
