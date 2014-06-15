class TravelFormsController < ApplicationController

  def show

  end

  def new

  end

  def create
    @player_name = params["player_name"]
    @parent_name = params["parent_name"]

    @player_name_no_whitespace = @player_name.gsub(/\s+/, "")

    html = render_to_string(action: "new")
    kit = PDFKit.new(html, :page_size => 'Letter')
    file = kit.to_file("#{Rails.root}/public/pdfs/travel_form_#{@player_name_no_whitespace}.pdf")
    render :show
  end
end
