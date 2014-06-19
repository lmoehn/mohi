class SignedDocument < ActiveRecord::Base

  mount_uploader :attachment, PdfUploader
end