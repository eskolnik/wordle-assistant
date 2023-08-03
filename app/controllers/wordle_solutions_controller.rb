class WordleSolutionsController < ApplicationController
    def index
      
      @wordle_solutions = Rails.cache.fetch("all_wordle_solutions", expires_at: Time.now.end_of_day) do
        dl = DataLoader.new
        # dl.update_list
        dl.get_all
      end
      
      render json: @wordle_solutions
    end
  end
  