require 'spec_helper'

describe SignedDocumentsController do

  describe "#create" do

    it "generates a PDF and redirects to the show page" do
      expect do
        quietly do
          post :create, signed_document: {player_name: "Joe", approved_on: "2014-06-19"}
        end
      end.to change { SignedDocument.count }.by(1)

      doc = SignedDocument.order(:id).last
      expect(doc.attachment.content_type).to eq("application/pdf")
      expect(response).to redirect_to(signed_document_path(doc))
    end

  end

end