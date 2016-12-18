class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      
	  t.string "username", :maximum => 20
	  t.string "email", :null => false
	  t.string "password_digest", :maximum => 20
      t.timestamps
    end
  end
end
