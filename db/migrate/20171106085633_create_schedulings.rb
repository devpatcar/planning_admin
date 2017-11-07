class CreateSchedulings < ActiveRecord::Migration[5.1]
  def change
    create_table :schedulings do |t|
      t.string :name
      t.integer :template_id
      t.date :start_date
      t.date :end_date
      t.boolean :monday
      t.boolean :thuesday
      t.boolean :wendsday
      t.boolean :thursday
      t.boolean :friday
      t.boolean :saturday
      t.boolean :sunday
      t.integer :week_duration
      t.integer :delay
      t.text :notification

      t.timestamps
    end
  end
end
