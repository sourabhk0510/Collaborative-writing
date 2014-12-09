class CreateJoins < ActiveRecord::Migration
  def change
    create_table :joins do |t|
	t.integer :admin_user_id
	t.integer :subgenre_id
	  t.timestamps
   end
add_index :joins, [:admin_user_id, :subgenre_id]  
end

def down
drop_table :joins
end
end
