class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :phone, :string
    add_column :users, :status, :integer, default: 0
    add_column :users, :level, :integer, default: 0
  end
end
