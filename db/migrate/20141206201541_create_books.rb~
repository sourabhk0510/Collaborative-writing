class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
	t.integer :subgenre_id
	t.text :content
      t.timestamps
    end
  add_index(:books, :subgenre_id)

end
end
