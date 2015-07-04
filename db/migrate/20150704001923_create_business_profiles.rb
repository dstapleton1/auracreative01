class CreateBusinessProfiles < ActiveRecord::Migration
  def change
    create_table :business_profiles do |t|
      t.string :name
      t.string :logo
      t.text :description
      t.integer :head_count
      t.string :website_link

      t.timestamps null: false
    end
  end
end
