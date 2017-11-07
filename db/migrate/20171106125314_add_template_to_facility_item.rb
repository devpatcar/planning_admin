class AddTemplateToFacilityItem < ActiveRecord::Migration[5.1]
  def change
    add_column :facility_items, :template_id, :integer
  end
end
