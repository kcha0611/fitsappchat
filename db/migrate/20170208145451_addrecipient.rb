class Addrecipient < ActiveRecord::Migration[5.0]
  def change
    add_column :chats, :string, :recipient
  end
end
