class CreateAspects < ActiveRecord::Migration[6.1]
  def change
    create_table :aspects do |t|
      t.string :name
      t.timestamps
    end
  end
end
