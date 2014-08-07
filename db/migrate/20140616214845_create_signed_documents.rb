class CreateSignedDocuments < ActiveRecord::Migration
  def change
    create_table :signed_documents do |t|
      t.belongs_to :user, null: false
      t.belongs_to :pdf_template, null: false
      t.boolean :active, default: true
      t.string :attachment
      t.timestamps
    end
    add_index(:signed_documents, [:user_id, :pdf_template_id], :unique => true)
  end
end
