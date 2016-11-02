class CreateChatroomusers < ActiveRecord::Migration[5.0]
  def change
    create_table :chatroomusers do |t|
      t.references :chatroom, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
