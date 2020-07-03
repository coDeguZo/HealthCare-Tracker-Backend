class CreateConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :conditions do |t|
      t.string :name
      t.string :information
      t.string :string
      t.string :symptoms

      t.timestamps
    end
  end
end
