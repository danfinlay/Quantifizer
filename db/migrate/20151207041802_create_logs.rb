class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :log_type_id
      t.date :start_time
      t.date :end_time
      t.text :data

      t.timestamps
    end
  end
end
