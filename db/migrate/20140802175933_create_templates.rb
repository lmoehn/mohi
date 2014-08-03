class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :name
      t.string :version
      t.integer :year
      t.string :new_partial
      t.string :show_partial

      t.timestamps
    end
  end
end
