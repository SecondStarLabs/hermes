class VideoClipsController < ApplicationController
  before_action :set_video_clip, only: [:show, :edit, :update, :destroy]

  # GET /video_clips
  # GET /video_clips.json
  def index
    @video_clips = VideoClip.all
  end

  # GET /video_clips/1
  # GET /video_clips/1.json
  def show
  end

  # GET /video_clips/new
  def new
    @video_clip = VideoClip.new
  end

  # GET /video_clips/1/edit
  def edit
  end

  # POST /video_clips
  # POST /video_clips.json
  def create
    @video_clip = VideoClip.new(video_clip_params)

    respond_to do |format|
      if @video_clip.save
        format.html { redirect_to @video_clip, notice: 'Video clip was successfully created.' }
        format.json { render :show, status: :created, location: @video_clip }
      else
        format.html { render :new }
        format.json { render json: @video_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_clips/1
  # PATCH/PUT /video_clips/1.json
  def update
    respond_to do |format|
      if @video_clip.update(video_clip_params)
        format.html { redirect_to @video_clip, notice: 'Video clip was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_clip }
      else
        format.html { render :edit }
        format.json { render json: @video_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_clips/1
  # DELETE /video_clips/1.json
  def destroy
    @video_clip.destroy
    respond_to do |format|
      format.html { redirect_to video_clips_url, notice: 'Video clip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_clip
      @video_clip = VideoClip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_clip_params
      params.require(:video_clip).permit(:videorecording)
    end
end
