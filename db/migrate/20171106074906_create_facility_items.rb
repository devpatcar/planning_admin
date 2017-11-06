class CreateFacilityItems < ActiveRecord::Migration[5.1]
  def change
    create_table :facility_items do |t|
      t.string :name
      t.integer :facility_id

      t.timestamps
    end
  end
end
