class CreateWordleSolutions < ActiveRecord::Migration[7.0]
  def change
    create_table :wordle_solutions, id: :string, primary_key: 'word' do |t|
      t.datetime :solution_date

      t.timestamps
    end
  end
end
