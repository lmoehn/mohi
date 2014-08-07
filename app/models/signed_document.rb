class SignedDocument < ActiveRecord::Base

  mount_uploader :attachment, PdfUploader

  belongs_to :pdf_template
  belongs_to :user

  store_accessor :properties, :player_name, :parent_name, :approved_on,
                 :player_birth_date, :parent_name1, :parent_name2,
                 :phone1, :phone2, :family_physician
end