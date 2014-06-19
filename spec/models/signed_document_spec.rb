require 'spec_helper'

describe SignedDocument do

  describe 'signed document validations' do

    it 'creates a valid record and active to be true' do
      user = create_user

      attachment_location = "#{Rails.root}/public/pdfs/travel_form_#{user.first_name}.pdf"
      signed_document = SignedDocument.create!(user_id: user.id, attachment: attachment_location)

      expect(signed_document).to be_valid
      expect(signed_document.active).to eq true
    end
  end
end