class CreateWordleSolutions < ActiveRecord::Migration[7.0]
  def change
    create_table :wordle_solutions do |t|
      t.string :word
      t.datetime :solution_date

      t.timestamps
    end
  end
end
