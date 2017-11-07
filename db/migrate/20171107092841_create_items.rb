class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.column :template_id, :integer
      t.column :facility_item_id, :integer
      t.timestamps
    end
  end
end
