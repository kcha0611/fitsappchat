class CreateChats < ActiveRecord::Migration[5.0]
  def change
    create_table :chats do |t|
      t.string :subject
      t.string :body, null: false
      t.timestamps
    end
  end
end
