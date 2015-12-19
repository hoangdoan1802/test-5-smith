class AddFieldToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :year_of_exp, :integer
    add_column :users, :type, :string
  end

  def self.down
    remove_column :users, :year_of_exp, :integer
    remove_column :users, :type, :string
  end
end