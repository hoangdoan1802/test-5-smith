class RenameStudentTable < ActiveRecord::Migration
  def self.up
    rename_table :students, :users
  end 
  def self.down
    rename_table :users, :students
  end
end