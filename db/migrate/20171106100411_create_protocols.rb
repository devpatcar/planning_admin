class CreateProtocols < ActiveRecord::Migration[5.1]
  def change
    create_table :protocols do |t|
      t.integer :facility_item_id
      t.integer :template_id
      t.integer :result_id
      t.boolean :completed

      t.timestamps
    end
  end
end
