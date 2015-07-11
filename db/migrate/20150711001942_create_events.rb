class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :location
      t.datetime :starts
      t.datetime :ends
      t.string :slug
      t.references :user, index: true, foreign_key: true
      t.references :business_profile, index: true, foreign_key: true
      t.string :image
      t.string :contact_number
      t.string :event_link

      t.timestamps null: false
    end
    add_index :events, :slug, unique: true
  end
end
