class Addrecipientchats < ActiveRecord::Migration[5.0]
  def change
    add_column :chats, :recipient, :string
  end
end
