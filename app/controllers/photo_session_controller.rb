class PhotoSessionController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @PhotoSessions = PhotoSession.all
    @photo = Photo.all
  end

  def show
    @PhotoSessions = PhotoSession.all
    @photo = Photo.all
  end

  def photobooth
  end

  def new
    @PhotoSessions = PhotoSession.new
  end

  def create
    @PhotoSessions = PhotoSession.new
    @PhotoSessions.save

    @photo1 = Photo.new
    @photo1.image_data = params[:mydata1]
    @photo1.photo_session_id = @PhotoSessions.id
    @photo1.save

    @photo2 = Photo.new
    @photo2.image_data = params[:mydata2]
    @photo2.photo_session_id = @PhotoSessions.id
    @photo2.save

    @photo3 = Photo.new
    @photo3.image_data = params[:mydata3]
    @photo3.photo_session_id = @PhotoSessions.id
    @photo3.save

   redirect_to :back
    #redirect_to  "/participant/" + @PhotoSessions.idS
  end

end
