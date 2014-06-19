CarrierWave.configure do |config|
  if Rails.env.test?
    config.storage = :file
  else
    config.storage = :fog
    config.fog_credentials = {
        :provider => 'AWS',
        :aws_access_key_id => ENV["AWS_ACCESS_KEY"] || "heroku shim",
        :aws_secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"] || "heroku shim",
    }
    config.fog_directory = ENV["BUCKET_NAME"] || "heroku shim"
    config.fog_public = true
  end
end