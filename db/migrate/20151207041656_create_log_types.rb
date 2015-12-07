class CreateLogTypes < ActiveRecord::Migration
  def change
    create_table :log_types do |t|
      t.string :title
      t.text :description
      t.boolean :has_duration

      t.timestamps
    end
  end
end
