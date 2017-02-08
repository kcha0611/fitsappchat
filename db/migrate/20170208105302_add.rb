class Add < ActiveRecord::Migration[5.0]
  def change
    add_column :chats, :user_id, :integer
    add_column :chats, :trainer_id, :integer
  end
end
