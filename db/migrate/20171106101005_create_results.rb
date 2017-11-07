class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.integer :protocol_id
      t.string :answer
      t.string :question
      t.string :image_url
      t.string :user
      t.text :comment

      t.timestamps
    end
  end
end
