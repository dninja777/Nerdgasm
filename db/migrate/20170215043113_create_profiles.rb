class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :user_name
      t.string :contact_email
      t.string :description
      
      
      t.timestamps
    end
  end
end
