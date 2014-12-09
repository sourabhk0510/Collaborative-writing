class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
	t.integer :subgenre_id
	t.text :content
      t.timestamps
    end
  add_index(:songs, :subgenre_id)
  end
end
