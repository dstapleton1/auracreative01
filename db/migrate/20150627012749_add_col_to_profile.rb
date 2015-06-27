class AddColToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :phone, :string
  end
end
