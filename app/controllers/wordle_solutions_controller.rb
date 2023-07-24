class WordleSolutionsController < ApplicationController
    def index
      @wordle_solutions = WordleSolution.all
      render json: @wordle_solutions.map(&:word)
    end
  end
  