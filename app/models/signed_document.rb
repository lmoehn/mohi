class SignedDocument < ActiveRecord::Base

  mount_uploader :attachment, PdfUploader
  store_accessor :properties, :player_name, :parent_name, :approved_on
end