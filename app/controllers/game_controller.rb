class GameController < ApplicationController
  def home
    render({:template => "my_templates/home"})
  end

  def user_played_rock
    moves = ["rock","paper","scissors"]
    @computer_move = moves.sample

    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render({:template => "my_templates/play_rock"})
  end

  def user_played_paper
    moves = ["rock","paper","scissors"]
    @computer_move = moves.sample

    if @computer_move == "paper"
      @outcome = "tied"
    elsif @computer_move == "scissors"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render({:template => "my_templates/play_paper"})
  end

  def user_played_scissors
    moves = ["rock","paper","scissors"]
    @computer_move = moves.sample

    if @computer_move == "scissors"
      @outcome = "tied"
    elsif @computer_move == "rock"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render({:template => "my_templates/play_scissors"})
  end
end
