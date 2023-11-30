class AlphaController < ApplicationController
  def ask
  end

  def answer
    @alpha = params[:alpha]
    if @alpha.blank?
      @answer = 'Please enter a question'
    elsif @alpha =~ /Hello/
      @answer = 'Good morning'
    elsif @alpha.ends_with?('?')
      @answer = "I don't known"
    else
      @answer = 'I have no answer for that question!'
    end
  end
end
