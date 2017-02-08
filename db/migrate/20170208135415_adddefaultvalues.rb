class Adddefaultvalues < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :role, :string, :default => "Member"
    add_column :trainers, :role, :string, :default => "Trainer"
  end
end
