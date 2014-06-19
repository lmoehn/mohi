class AddParentNameToSignedDocuments < ActiveRecord::Migration
  def change
    add_column :signed_documents, :parent_name, :string
  end
end
