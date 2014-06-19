class CreateSignedDocuments < ActiveRecord::Migration
  def change
    create_table :signed_documents do |t|
      t.integer :user_id
      t.integer :template_id
      t.boolean :active, default: true
      t.string :attachment
      t.timestamps
    end
  end
end
