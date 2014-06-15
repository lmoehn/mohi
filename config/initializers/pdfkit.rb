PDFKit.configure do |config|

  if Rails.env.development? || Rails.env.test?
    #only if your are working on 32bit machine
    #config.wkhtmltopdf = Rails.root.join('bin', 'wkhtmltopdf-i386').to_s
    config.wkhtmltopdf = Rails.root.join('bin', 'wkhtmltox-0.12.1', 'bin', 'wkhtmltopdf').to_s
  else
    #if your site is hosted on heroku or any other hosting server which is 64bit
    config.wkhtmltopdf = Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s
  end

  config.default_options = {
      :encoding=>"UTF-8",
      :page_size=>"Letter",
      :margin_top=>"0.5in",
      :margin_right=>"0.5in",
      :margin_bottom=>"0.5in",
      :margin_left=>"0.5in",
      :disable_smart_shrinking=> false,
      :print_media_type=> true
  }
end
