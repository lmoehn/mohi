class AddPropertiesToSignedDocuments < ActiveRecord::Migration
  def change
    add_column :signed_documents, :properties, :hstore
  end
end
