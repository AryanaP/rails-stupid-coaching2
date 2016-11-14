class CoachingController < ApplicationController
  attr_accessor :message, :answer

  def initialize
    @message = ""
    @answer = ""
  end

  def answer
    @message = params[:query]
    if @message.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @message == "I am going to work right now!"
         @answer = "Ok."
    else
       @answer = "I don't care, get dressed and go to work!"
    end
  end

  def ask
  end

end
