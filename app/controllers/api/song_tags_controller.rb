class Api::SongTagsController < ApplicationController

  class Api::EventTagsController < ApplicationController

    before_action :authenticate_user, except: :show
  
    def create
      @song_tag = SongTag.new(
        song_id: params[:song_id],
        tag_id: params[:tag_id],
      )
      if @song_tag.save
        render "show.json.jb"
      else
        render json: {errors: @song_tag.errors.full_messages}, status: :unprocessable_entity
      end
    end
  
    def show
      @song_tag = SongTag.find_by(id: params[:id])
      if @song_tag
        render "show.json.jb"
      else
        render json: {errors: "song_tag does not exist."}, status: :unprocessable_entity
      end
    end
  
    def destroy
      @song_tag = SongTag.find_by(id: params[:id])
      @song_tag.destroy
      render json: {message: "song_tag successfully deleted."}
    end
  
  end

end
