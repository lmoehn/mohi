class SignedDocumentsController < ApplicationController

  def index
    @signed_documents = SignedDocument.all
    render layout: "application"
  end

  def show
    @signed_document = SignedDocument.find(params[:id])
  end

  def new
    template = PdfTemplate.find(params[:pdf_template_id])
    @signed_document = SignedDocument.new(
        approved_on: Date.today,
        pdf_template: template,
        user_id: params[:user_id]
    )
  end

  def create
    @signed_document = SignedDocument.new(
        user_id: params[:signed_document][:user_id],
        pdf_template_id: params[:signed_document][:pdf_template_id],
        properties: params[:signed_document],
    )

    html = render_to_string(action: "show")
    kit = PDFKit.new(html, page_size: "Letter")
    pdf = kit.to_pdf
    file = Tempfile.new(['signed_document', '.pdf'], encoding: 'ASCII-8BIT')
    file.rewind
    file.write pdf
    @signed_document.attachment = file
    @signed_document.save!
    redirect_to signed_document_path(@signed_document)
  end
end
