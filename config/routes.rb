Rails.application.routes.draw do
  # Routes for the Template resource:

  # CREATE
  get("/templates/new", { :controller => "templates", :action => "new_form" })
  post("/create_template", { :controller => "templates", :action => "create_row" })

  # READ
  get("/templates", { :controller => "templates", :action => "index" })
  get("/templates/:id_to_display", { :controller => "templates", :action => "show" })

  # UPDATE
  get("/templates/:prefill_with_id/edit", { :controller => "templates", :action => "edit_form" })
  post("/update_template/:id_to_modify", { :controller => "templates", :action => "update_row" })

  # DELETE
  get("/delete_template/:id_to_remove", { :controller => "templates", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
