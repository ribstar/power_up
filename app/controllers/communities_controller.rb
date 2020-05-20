class CommunitiesController < ApplicationController

  def index
  end
  
  def new
    @community = Community.new
    @community.users << current_user
  end

  def create
    @community = Community.new(community_params)
    if @community.save
      redirect_to root_path, notice: 'コミュニティを作成しました'
    else
      render :new
    end
  end

  def edit
    @community = Community.find(params[:id])
  end

  def update
    @community = Community.find(params[:id])
    if @community.update(community_params)
      redirect_to root_path, notice: 'グループを更新しました'
    else
      render :edit
    end
  end

  private
  def community_params
    params.require(:community).permit(:name, user_ids: [])
  end

end
