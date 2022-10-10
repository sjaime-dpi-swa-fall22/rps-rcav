class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def play_rock
    index = rand(3)
    moves = ["rock", "paper", "scissors"]
    @comp_move=moves[index]

    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    elsif @comp_move == "scissors"
      @outcome = "won"
    end

    #redirect_to("https://www.google.com")  # to redirect to a different URL
    #render({ :plain => "Hello world!"}) # to render plain text
    # render({ :html => "<h1>Hello, World!</h1>".html_safe }) # to render html #directly, ,html_sage is required for security reasons

    #to output json
    #response_hash ={:my_move =>"rock", :computer_move => @comp_move, :outcome => @outcome}
    #render({ :plain => response_hash.to_json})

    render({ :template => "game_templates/rock.html.erb"})
  end

  def play_paper
    index = rand(3)
    moves = ["rock", "paper", "scissors"]
    @comp_move=moves[index]

    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    end

    render({ :template => "game_templates/paper.html.erb"})
  end

  def play_scissors
    index = rand(3)
    moves = ["rock", "paper", "scissors"]
    @comp_move=moves[index]

    if @comp_move == "rock"
      @outcome = "lost"
    elsif @comp_move == "paper"
      @outcome = "won"
    elsif @comp_move == "scissors"
      @outcome = "tied"
    end

    render({ :template => "game_templates/scissors.html.erb"})
  end

  def homepage

   render({ :template => "index.html.erb"})
  end

end
