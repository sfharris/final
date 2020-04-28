class TeamsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @teams = Team.all
  end

   def new
    @team = Team.new
  end

 def create
  current_user.teams.create(team_params)
  redirect_to root_path
end

  private

  def team_params
    params.require(:team).permit(:name, :games, :championships)
  end
end
