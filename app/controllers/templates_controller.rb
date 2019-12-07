class TemplatesController < ApplicationController
  def index
    @templates = Template.all

    render("template_templates/index.html.erb")
  end

  def show
    @template = Template.find(params.fetch("id_to_display"))

    render("template_templates/show.html.erb")
  end

  def new_form
    @template = Template.new

    render("template_templates/new_form.html.erb")
  end

  def create_row
    @template = Template.new

    @template.description = params.fetch("description")
    @template.template_text = params.fetch("template_text")
    @template.function_id = params.fetch("function_id")
    @template.user_id = params.fetch("user_id")

    if @template.valid?
      @template.save

      redirect_back(:fallback_location => "/templates", :notice => "Template created successfully.")
    else
      render("template_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @template = Template.find(params.fetch("prefill_with_id"))

    render("template_templates/edit_form.html.erb")
  end

  def update_row
    @template = Template.find(params.fetch("id_to_modify"))

    @template.description = params.fetch("description")
    @template.template_text = params.fetch("template_text")
    @template.function_id = params.fetch("function_id")
    @template.user_id = params.fetch("user_id")

    if @template.valid?
      @template.save

      redirect_to("/templates/#{@template.id}", :notice => "Template updated successfully.")
    else
      render("template_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_function
    @template = Template.find(params.fetch("id_to_remove"))

    @template.destroy

    redirect_to("/functions/#{@template.function_id}", notice: "Template deleted successfully.")
  end

  def destroy_row_from_user
    @template = Template.find(params.fetch("id_to_remove"))

    @template.destroy

    redirect_to("/users/#{@template.user_id}", notice: "Template deleted successfully.")
  end

  def destroy_row
    @template = Template.find(params.fetch("id_to_remove"))

    @template.destroy

    redirect_to("/templates", :notice => "Template deleted successfully.")
  end
end
