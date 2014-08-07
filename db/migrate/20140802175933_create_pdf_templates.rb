class CreatePdfTemplates < ActiveRecord::Migration
  def change
    create_table :pdf_templates do |t|
      t.string :name, null: false
      t.string :version
      t.integer :year
      t.string :new_partial, null: false
      t.string :show_partial, null: false
      t.boolean :active, default: true, null: false

      t.timestamps
    end
  end
end
