class FunctionsController < ApplicationController
  def index
    @functions = Function.all

    render("function_templates/index.html.erb")
  end

  def show
    @template = Template.new
    @function = Function.find(params.fetch("id_to_display"))

    render("function_templates/show.html.erb")
  end

  def new_form
    @function = Function.new

    render("function_templates/new_form.html.erb")
  end

  def create_row
    @function = Function.new

    @function.function_name = params.fetch("function_name")

    if @function.valid?
      @function.save

      redirect_back(:fallback_location => "/functions", :notice => "Function created successfully.")
    else
      render("function_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @function = Function.find(params.fetch("prefill_with_id"))

    render("function_templates/edit_form.html.erb")
  end

  def update_row
    @function = Function.find(params.fetch("id_to_modify"))

    @function.function_name = params.fetch("function_name")

    if @function.valid?
      @function.save

      redirect_to("/functions/#{@function.id}", :notice => "Function updated successfully.")
    else
      render("function_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @function = Function.find(params.fetch("id_to_remove"))

    @function.destroy

    redirect_to("/functions", :notice => "Function deleted successfully.")
  end
end
