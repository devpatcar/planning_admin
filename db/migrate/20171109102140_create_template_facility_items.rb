class CreateTemplateFacilityItems < ActiveRecord::Migration[5.1]
  def change
    create_table :template_facility_items do |t|
      t.integer :template_id
      t.integer :facility_item_id

      t.timestamps
    end
  end
end
