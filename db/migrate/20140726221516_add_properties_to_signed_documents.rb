class AddPropertiesToSignedDocuments < ActiveRecord::Migration
  def change
    add_column :signed_documents, :properties, :hstore, defalut: '', null: false
  end
end
