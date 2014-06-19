class AddPlayerNameToSignedDocuments < ActiveRecord::Migration
  def change
    add_column :signed_documents, :player_name, :string
  end
end
