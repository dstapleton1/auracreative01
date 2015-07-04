class AddSlugToBusinessProfile < ActiveRecord::Migration
  def change
    add_column :business_profiles, :slug, :string
    add_index :business_profiles, :slug, unique: true
  end
end
