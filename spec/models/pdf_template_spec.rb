require 'spec_helper'

describe PdfTemplate do

  describe 'template validations' do

    it 'creates a valid record and active to be true' do
      template = PdfTemplate.create!(
          name: "BVSD Travel",
          new_partial: "new_bvsd_travel",
          show_partial: "show_bvsd_travel",
          active: true,
      )

      expect(template).to be_valid
    end
  end
end