class CannedResponsesController < ApplicationController
  def index
    @q = CannedResponse.ransack(params[:q])
    @canned_responses = @q.result(:distinct => true).includes(:template).page(params[:page]).per(10)

    render("canned_response_templates/index.html.erb")
  end

  def show
    @canned_response = CannedResponse.find(params.fetch("id_to_display"))

    render("canned_response_templates/show.html.erb")
  end

  def new_form
    @canned_response = CannedResponse.new

    render("canned_response_templates/new_form.html.erb")
  end

  def create_row
    @canned_response = CannedResponse.new

    @canned_response.template_id = params.fetch("template_id")
    @canned_response.email_text = params.fetch("email_text")

    if @canned_response.valid?
      @canned_response.save

      redirect_back(:fallback_location => "/canned_responses", :notice => "Canned response created successfully.")
    else
      render("canned_response_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @canned_response = CannedResponse.find(params.fetch("prefill_with_id"))

    render("canned_response_templates/edit_form.html.erb")
  end

  def update_row
    @canned_response = CannedResponse.find(params.fetch("id_to_modify"))

    @canned_response.template_id = params.fetch("template_id")
    @canned_response.email_text = params.fetch("email_text")

    if @canned_response.valid?
      @canned_response.save

      redirect_to("/canned_responses/#{@canned_response.id}", :notice => "Canned response updated successfully.")
    else
      render("canned_response_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @canned_response = CannedResponse.find(params.fetch("id_to_remove"))

    @canned_response.destroy

    redirect_to("/canned_responses", :notice => "Canned response deleted successfully.")
  end
end
