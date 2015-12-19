class AddFieldToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :year_of_exp, :integer
  end

  def self.down
    remove_column :users, :year_of_exp, :integer
  end
end