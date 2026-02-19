class PagesController < ApplicationController
  def ask
  end

  def answer
    @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    # if params[:member]
    #   @members = @members.select { |member| member.start_with?(params[:member]) }
    # end

    if params[:userinput].include?("?")
      @answers = @answers.select {|answer| answer.include?("question")}[0]
    elsif params[:userinput].downcase.include?("i am going to work")
      @answers = @answers.select {|answer| answer.include?("Great")}[0]
    else
      @answers = @answers.select {|answer| answer.include?("care")}[0]
    end
  end
end
