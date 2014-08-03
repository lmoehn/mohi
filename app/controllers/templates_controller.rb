class TemplatesController < ApplicationController

  def index
    @templates = Template.all
  end

  def show
    @template = Template.find(params[:id])
  end

  def new
    @template = Template.new
  end

  def create
    @template = Template.new(template_params)
    if @template.save
      redirect_to templates_path
    else
      render new_template_path
    end
  end

  def edit
    @template = Template.find(params[:id])
  end

  def update
    @template = Template.find(params[:id])
    if @template.update_attributes(template_params)
      redirect_to templates_path
    else
      render edit_template_path
    end
  end

  def destroy
    Template.destroy(params[:id])
    redirect_to templates_path
  end

  private

  def template_params
    params.require(:template).permit(:name, :version, :year, :new_partial, :show_partial)
  end

end
