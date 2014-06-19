class AddApprovedOnToSignedDocuments < ActiveRecord::Migration
  def change
    add_column :signed_documents, :approved_on, :date
  end
end
