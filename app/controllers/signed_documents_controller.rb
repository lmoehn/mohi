class SignedDocumentsController < ApplicationController

  def index
    @signed_documents = SignedDocument.all
    render layout: "application"
  end

  def show
    @signed_document = SignedDocument.find(params[:id])
  end

  def new
    @signed_document = SignedDocument.new(
        approved_on: Date.today
    )
  end

  def create
    @signed_document = SignedDocument.new(properties: {
        player_name: params[:signed_document][:player_name],
        parent_name: params[:signed_document][:parent_name],
        approved_on: params[:signed_document][:approved_on],
    })

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
