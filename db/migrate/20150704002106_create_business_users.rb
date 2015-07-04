class CreateBusinessUsers < ActiveRecord::Migration
  def change
    create_table :business_users do |t|
      t.references :user, index: true, foreign_key: true
      t.references :business_profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
