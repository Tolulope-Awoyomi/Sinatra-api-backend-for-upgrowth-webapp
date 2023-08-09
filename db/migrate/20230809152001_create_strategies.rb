class CreateStrategies < ActiveRecord::Migration[6.1]
  def change
    create_table :strategies do |t|
      t.string :name
      t.integer :aspect_id
      t.timestamps
    end
  end
end
