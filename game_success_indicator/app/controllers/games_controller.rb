class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @games = Game.all
    # @game = Game.find(params(:id, 1))
    @predict = 'test'
  end

  def home
    @predict = 'test'
  end

  def new
    @game = Game.new
  end

  def edit
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      flash[:notice] = "Game prediction was created successfully."
    end
    # @game = Game.last
    @game2 = Game.last
    String genreString = @game2.genre
    String platformString = @game2.platform
    String developerString = @game2.developer
      if ((genreString.eql? "Sports") && (platformString.eql? "PC") && (developerString.eql? "Indie/Solo"))
        @predict = "0.06%"
        render 'results' #either way you're going to want to render the page with the new value
        # going to need to render to another view!! This would be much cooler
      elsif ((genreString.eql? "Sports") && (platformString.eql? "PC") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "33.5%"
        render 'results' #either way you're going to want to render the page with the new value
        #going to need to render to another view
      elsif ((genreString.eql? "Sports") && (platformString.eql? "PC") && (developerString.eql? "AAA 1st-Party"))
        @predict = "33.5%"
        render 'results'
      elsif ((genreString.eql? "Sports") && (platformString.eql? "Nintendo") && (developerString.eql? "Indie/Solo"))
        @predict = "0.06%"
        render 'results'
      elsif ((genreString.eql? "Sports") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "6.4%"
        render 'results'
      elsif ((genreString.eql? "Sports") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.37%"
        render 'results'
      elsif ((genreString.eql? "Sports") && (platformString.eql? "Xbox") && (developerString.eql? "Indie/Solo"))
        @predict = "0.06%"
        render 'results'
      elsif ((genreString.eql? "Sports") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "2.9%"
        render 'results'
      elsif ((genreString.eql? "Sports") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.06%"
        render 'results'
      elsif ((genreString.eql? "Sports") && (platformString.eql? "Playstation") && (developerString.eql? "Indie/Solo"))
        @predict = "0.06%"
        render 'results'
      elsif ((genreString.eql? "Sports") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "3.13%"
      elsif ((genreString.eql? "Sports") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.06%"
        render 'results'
      elsif ((genreString.eql? "RPG") && (platformString.eql? "PC") && (developerString.eql? "Indie/Solo"))
        @predict = "0.35%"
        render 'results'
      elsif ((genreString.eql? "RPG") && (platformString.eql? "PC") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "92.2%"
        render 'results'
      elsif ((genreString.eql? "RPG") && (platformString.eql? "PC") && (developerString.eql? "AAA 1st-Party"))
        @predict = "92.2%"
        render 'results'
      elsif ((genreString.eql? "RPG") && (platformString.eql? "Nintendo") && (developerString.eql? "Indie/Solo"))
        @predict = "0.08%"
        render 'results'
      elsif ((genreString.eql? "RPG") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "11.7%"
        render 'results'
      elsif ((genreString.eql? "RPG") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.08%"
        render 'results'
      elsif ((genreString.eql? "RPG") && (platformString.eql? "Xbox") && (developerString.eql? "Indie/Solo"))
        @predict = "0.08%"
        render 'results'
      elsif ((genreString.eql? "RPG") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "4.65%"
        render 'results'
      elsif ((genreString.eql? "RPG") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.08%"
        render 'results'
      elsif ((genreString.eql? "RPG") && (platformString.eql? "Playstation") && (developerString.eql? "Indie/Solo"))
        @predict = "0.08%"
        render 'results'
      elsif ((genreString.eql? "RPG") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "0.08%"
        render 'results'
      elsif ((genreString.eql? "RPG") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.08%"
        render 'results'
      elsif ((genreString.eql? "Platformer") && (platformString.eql? "PC") && (developerString.eql? "Indie/Solo"))
        @predict = "0.417%"
        render 'results'
      elsif ((genreString.eql? "Platformer") && (platformString.eql? "PC") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "53.85%"
        render 'results'
      elsif ((genreString.eql? "Platformer") && (platformString.eql? "PC") && (developerString.eql? "AAA 1st-Party"))
        @predict = "53.85%"
        render 'results'
      elsif ((genreString.eql? "Platformer") && (platformString.eql? "Nintendo") && (developerString.eql? "Indie/Solo"))
        @predict = "0.08%"
        render 'results'
      elsif ((genreString.eql? "Platformer") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "20.4%"
        render 'results'
      elsif ((genreString.eql? "Platformer") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 1st-Party"))
        @predict = "4.73%"
        render 'results'
      elsif ((genreString.eql? "Platformer") && (platformString.eql? "Xbox") && (developerString.eql? "Indie/Solo"))
        @predict = "0.08%"
        render 'results'
      elsif ((genreString.eql? "Platformer") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "12.5%"
        render 'results'
      elsif ((genreString.eql? "Platformer") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.08%"
        render 'results'
      elsif ((genreString.eql? "Platformer") && (platformString.eql? "Playstation") && (developerString.eql? "Indie/Solo"))
        @predict = "0.08%"
        render 'results'
      elsif ((genreString.eql? "Platformer") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "0.08%"
        render 'results'
      elsif ((genreString.eql? "Platformer") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.08%"
        render 'results'
      elsif ((genreString.eql? "Racing") && (platformString.eql? "PC") && (developerString.eql? "Indie/Solo"))
        @predict = "0.16%"
        render 'results'
      elsif ((genreString.eql? "Racing") && (platformString.eql? "PC") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "83.17%"
        render 'results'
      elsif ((genreString.eql? "Racing") && (platformString.eql? "PC") && (developerString.eql? "AAA 1st-Party"))
        @predict = "83.17%"
        render 'results'
      elsif ((genreString.eql? "Racing") && (platformString.eql? "Nintendo") && (developerString.eql? "Indie/Solo"))
        @predict = "0.16%"
        render 'results'
      elsif ((genreString.eql? "Racing") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "7.86%"
        render 'results'
      elsif ((genreString.eql? "Racing") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 1st-Party"))
        @predict = "2.24%"
        render 'results'
      elsif ((genreString.eql? "Racing") && (platformString.eql? "Xbox") && (developerString.eql? "Indie/Solo"))
        @predict = "0.16%"
        render 'results'
      elsif ((genreString.eql? "Racing") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "9.79%"
        render 'results'
      elsif ((genreString.eql? "Racing") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.16%"
        render 'results'
      elsif ((genreString.eql? "Racing") && (platformString.eql? "Playstation") && (developerString.eql? "Indie/Solo"))
        @predict = "0.16%"
        render 'results'
      elsif ((genreString.eql? "Racing") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "3.53%"
        render 'results'
      elsif ((genreString.eql? "Racing") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.16%"
        render 'results'
      elsif ((genreString.eql? "Action/Adventure") && (platformString.eql? "PC") && (developerString.eql? "Indie/Solo"))
        @predict = "0.008%"
        render 'results'
      elsif ((genreString.eql? "Action/Adventure") && (platformString.eql? "PC") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "81.0%"
        render 'results'
      elsif ((genreString.eql? "Action/Adventure") && (platformString.eql? "PC") && (developerString.eql? "AAA 1st-Party"))
        @predict = "81.0%"
        render 'results'
      elsif ((genreString.eql? "Action/Adventure") && (platformString.eql? "Nintendo") && (developerString.eql? "Indie/Solo"))
        @predict = "0.008%"
        render 'results'
      elsif ((genreString.eql? "Action/Adventure") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "2.516%"
        render 'results'
      elsif ((genreString.eql? "Action/Adventure") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.177%"
        render 'results'
      elsif ((genreString.eql? "Action/Adventure") && (platformString.eql? "Xbox") && (developerString.eql? "Indie/Solo"))
        @predict = "0.00296%"
        render 'results'
      elsif ((genreString.eql? "Action/Adventure") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "5.53%"
        render 'results'
      elsif ((genreString.eql? "Action/Adventure") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.00296%"
        render 'results'
      elsif ((genreString.eql? "Action/Adventure") && (platformString.eql? "Playstation") && (developerString.eql? "Indie/Solo"))
        @predict = "0.00296%"
        render 'results'
      elsif ((genreString.eql? "Action/Adventure") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "1.51%"
        render 'results'
      elsif ((genreString.eql? "Action/Adventure") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.681%"
        render 'results'
      elsif ((genreString.eql? "Racing") && (platformString.eql? "PC") && (developerString.eql? "Indie/Solo"))
        @predict = "0.278%"
        render 'results'
      elsif ((genreString.eql? "Fighting") && (platformString.eql? "PC") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "17.25%"
        render 'results'
      elsif ((genreString.eql? "Fighting") && (platformString.eql? "PC") && (developerString.eql? "AAA 1st-Party"))
        @predict = "17.25%"
        render 'results'
      elsif ((genreString.eql? "Fighting") && (platformString.eql? "Nintendo") && (developerString.eql? "Indie/Solo"))
        @predict = "0.139%"
        render 'results'
      elsif ((genreString.eql? "Fighting") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "4.731%"
        render 'results'
      elsif ((genreString.eql? "Fighting") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.139%"
        render 'results'
      elsif ((genreString.eql? "Fighting") && (platformString.eql? "Xbox") && (developerString.eql? "Indie/Solo"))
        @predict = "0.139%"
        render 'results'
      elsif ((genreString.eql? "Fighting") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "2.5%"
        render 'results'
      elsif ((genreString.eql? "Fighting") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.139%"
        render 'results'
      elsif ((genreString.eql? "Fighting") && (platformString.eql? "Playstation") && (developerString.eql? "Indie/Solo"))
        @predict = "0.139%"
        render 'results'
      elsif ((genreString.eql? "Fighting") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "0.139%"
        render 'results'
      elsif ((genreString.eql? "Fighting") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.139%"
        render 'results'
      elsif ((genreString.eql? "FPS") && (platformString.eql? "PC") && (developerString.eql? "Indie/Solo"))
        @predict = "0.0038%"
        render 'results'
      elsif ((genreString.eql? "FPS") && (platformString.eql? "PC") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "39.9%"
        render 'results'
      elsif ((genreString.eql? "FPS") && (platformString.eql? "PC") && (developerString.eql? "AAA 1st-Party"))
        @predict = "39.9%"
        render 'results'
      elsif ((genreString.eql? "FPS") && (platformString.eql? "Nintendo") && (developerString.eql? "Indie/Solo"))
        @predict = "0.0038%"
        render 'results'
      elsif ((genreString.eql? "FPS") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "1.69%"
        render 'results'
      elsif ((genreString.eql? "FPS") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.192%"
        render 'results'
      elsif ((genreString.eql? "FPS") && (platformString.eql? "Xbox") && (developerString.eql? "Indie/Solo"))
        @predict = "0.0038%"
        render 'results'
      elsif ((genreString.eql? "FPS") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "7.15%"
        render 'results'
      elsif ((genreString.eql? "FPS") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.0038%"
        render 'results'
      elsif ((genreString.eql? "FPS") && (platformString.eql? "Playstation") && (developerString.eql? "Indie/Solo"))
        @predict = "0.0038%"
        render 'results'
      elsif ((genreString.eql? "FPS") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "0.4617%"
        render 'results'
      elsif ((genreString.eql? "FPS") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.0038%"
        render 'results'
      elsif ((genreString.eql? "Strategy") && (platformString.eql? "PC") && (developerString.eql? "Indie/Solo"))
        @predict = "0.6109%"
        render 'results'
      elsif ((genreString.eql? "Strategy") && (platformString.eql? "PC") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "24.19%"
        render 'results'
      elsif ((genreString.eql? "Strategy") && (platformString.eql? "PC") && (developerString.eql? "AAA 1st-Party"))
        @predict = "24.19%"
        render 'results'
      elsif ((genreString.eql? "Strategy") && (platformString.eql? "Nintendo") && (developerString.eql? "Indie/Solo"))
        @predict = "0.203%"
        render 'results'
      elsif ((genreString.eql? "Strategy") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "9.16%"
        render 'results'
      elsif ((genreString.eql? "Strategy") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 1st-Party"))
        @predict = "1.22%"
        render 'results'
      elsif ((genreString.eql? "Strategy") && (platformString.eql? "Xbox") && (developerString.eql? "Indie/Solo"))
        @predict = "0.0203%"
        render 'results'
      elsif ((genreString.eql? "Strategy") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "14.05%"
        render 'results'
      elsif ((genreString.eql? "Strategy") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.205"
        render 'results'
      elsif ((genreString.eql? "Strategy") && (platformString.eql? "Playstation") && (developerString.eql? "Indie/Solo"))
        @predict = "0.203%"
        render 'results'
      elsif ((genreString.eql? "Strategy") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "0.203%"
        render 'results'
      elsif ((genreString.eql? "Strategy") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.203%"
        render 'results'
      elsif ((genreString.eql? "Misc") && (platformString.eql? "PC") && (developerString.eql? "Indie/Solo"))
        @predict = "0.407%"
        render 'results'
      elsif ((genreString.eql? "Misc") && (platformString.eql? "PC") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "9.46%"
        render 'results'
      elsif ((genreString.eql? "Misc") && (platformString.eql? "PC") && (developerString.eql? "AAA 1st-Party"))
        @predict = "9.46%"
        render 'results'
      elsif ((genreString.eql? "Misc") && (platformString.eql? "Nintendo") && (developerString.eql? "Indie/Solo"))
        @predict = "0.763%"
        render 'results'
      elsif ((genreString.eql? "Misc") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "51.8%"
        render 'results'
      elsif ((genreString.eql? "Misc") && (platformString.eql? "Nintendo") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.763%"
        render 'results'
      elsif ((genreString.eql? "Misc") && (platformString.eql? "Xbox") && (developerString.eql? "Indie/Solo"))
        @predict = "0.763%"
        render 'results'
      elsif ((genreString.eql? "Misc") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "39.5%"
        render 'results'
      elsif ((genreString.eql? "Misc") && (platformString.eql? "Xbox") && (developerString.eql? "AAA 1st-Party"))
        @predict = "2.29%"
        render 'results'
      elsif ((genreString.eql? "Misc") && (platformString.eql? "Playstation") && (developerString.eql? "Indie/Solo"))
        @predict = "0.263%"
        render 'results'
      elsif ((genreString.eql? "Misc") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 3rd-Party"))
        @predict = "6.10%"
        render 'results'
      elsif ((genreString.eql? "Misc") && (platformString.eql? "Playstation") && (developerString.eql? "AAA 1st-Party"))
        @predict = "0.763%"
        render 'results'
      else
        @predict = "Could not find prediction"
        render 'index'
      end
  end

  def update
    if @game.update(game_params)
      flash[:notice] = "Game was updated successfully."
      redirect_to @game
    else
      render 'edit'
    end
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private #anything below this is a private method

  def set_game
    @game = Game.find(params(:id))
  end

  def game_params
    params.permit(:genre, :platform, :developer)
  end
end
