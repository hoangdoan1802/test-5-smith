class CreateSchoolsUsers < ActiveRecord::Migration
  def change
    create_table :schools_users do |t|
    	t.references :school, index: true
    	t.references :user, index: true
    end
  end
end
