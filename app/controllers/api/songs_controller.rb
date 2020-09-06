class Api::SongsController < ApplicationController

  before_action :authenticate_user, except: [:index, :show]

  def index
    @songs = Song.all
    render "index.json.jb"
  end

  def create
    @song = Song.new(
      user_id: current_user.id,
      title: params[:title],
      author: params[:author],
      key: params[:key],
      mode: params[:mode],
      tempo: params[:tempo],
      duration: params[:duration],
      status: params[:status],
      notes: params[:notes],
    )
    if @song.save
      render "show.json.jb"
    else 
      render json: {errors: @song.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @song = Song.find_by(id: params[:id])
    if @song
      render "show.json.jb"
    else
      render json: {errors: "Song does not exist."}, status: :unprocessable_entity
    end
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.title = params[:title] || @song.title
    @song.author = params[:author] || @song.author
    @song.key = params[:key] || @song.key
    @song.mode = params[:mode] || @song.mode
    @song.tempo = params[:tempo] || @song.tempo
    @song.duration = params[:duration] || @song.duration
    @song.status = params[:status] || @song.status
    @song.notes = params[:notes] || @song.notes
    if @song.save
      render "show.json.jb"
    else
      render json: {errors: @song.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @song = Song.find_by(id: params[:id])
    if current_user.id == @song.user_id
      @song.destroy
      render json: {message: "Song deleted successfully"}
    else
      render json: {}, status: :forbidden
    end
  end

end
