class AddRoleToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.belongs_to :role, polymorphic: true, index: true
    end
  end
end
