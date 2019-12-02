class AddChirpToDb < ActiveRecord::Migration[5.2]
  def change
	create_table :chirps do |t|
	  t.string :text
	end
  end
end

