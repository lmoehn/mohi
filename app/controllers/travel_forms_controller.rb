class TravelFormsController < ApplicationController

  def show

  end

  def new

  end

  def create
    @player_name_no_whitespace = params["player_name"].gsub(/\s+/, "")

    html = render_to_string(action: "show")
    kit = PDFKit.new(html, page_size: "Letter")
    file = kit.to_file("#{Rails.root}/public/pdfs/travel_form_#{@player_name_no_whitespace}.pdf")

    render :show
  end
end
