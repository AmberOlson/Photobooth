class ParticipantController < ApplicationController

  def index
    @participants = Participant.all
  end

  def new
    @participant = Participant.new
  end


  def create
    @participant1 = Participant.new
    @participant1.name = params[:name1]
    @participant1.email = params[:emai1]
    @participant1.photo_session_id = @PhotoSessions.id
    @participant1.save
  end


  def show
    @participant = Participant.find(params[:id])
  end

  #private
  #def participant_params
  #  params.require(:participant).permit(:name, :email, :photo_session_id)
  #end


end
