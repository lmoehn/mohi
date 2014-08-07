class PdfTemplatesController < ApplicationController

  def index
    @pdf_templates = PdfTemplate.all
  end

  def show
    @pdf_template = PdfTemplate.find(params[:id])
  end

  def new
    @pdf_template = PdfTemplate.new
  end

  def create
    @pdf_template = PdfTemplate.new(pdf_template_params)
    if @pdf_template.save
      redirect_to pdf_templates_path
    else
      render new_pdf_template_path
    end
  end

  def edit
    @pdf_template = PdfTemplate.find(params[:id])
  end

  def update
    @pdf_template = PdfTemplate.find(params[:id])
    if @pdf_template.update_attributes(pdf_template_params)
      redirect_to pdf_templates_path
    else
      render edit_pdf_template_path
    end
  end

  def destroy
    PdfTemplate.destroy(params[:id])
    redirect_to pdf_templates_path
  end

  private

  def available_partials
    Dir.glob(Rails.root.join("app", "views", "pdf_templates", "*.html.erb")).map do |path|
      File.basename(path).split(".").first.sub("_", "")
    end
  end

  helper_method :available_partials

  def pdf_template_params
    params.require(:pdf_template).permit(:name, :version, :year, :new_partial, :show_partial, :active)
  end

end
