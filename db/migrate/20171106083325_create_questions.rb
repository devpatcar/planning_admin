class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.text :description
      t.integer :template_id
      t.boolean :required
      t.boolean :images
      t.boolean :comment

      t.timestamps
    end
  end
end
