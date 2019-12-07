Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "templates#index"
  # Routes for the User resource:

  # CREATE
  get("/users/new", { :controller => "users", :action => "new_form" })
  post("/create_user", { :controller => "users", :action => "create_row" })

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  # UPDATE
  get("/users/:prefill_with_id/edit", { :controller => "users", :action => "edit_form" })
  post("/update_user/:id_to_modify", { :controller => "users", :action => "update_row" })

  # DELETE
  get("/delete_user/:id_to_remove", { :controller => "users", :action => "destroy_row" })

  #------------------------------

  # Routes for the Function resource:

  # CREATE
  get("/functions/new", { :controller => "functions", :action => "new_form" })
  post("/create_function", { :controller => "functions", :action => "create_row" })

  # READ
  get("/functions", { :controller => "functions", :action => "index" })
  get("/functions/:id_to_display", { :controller => "functions", :action => "show" })

  # UPDATE
  get("/functions/:prefill_with_id/edit", { :controller => "functions", :action => "edit_form" })
  post("/update_function/:id_to_modify", { :controller => "functions", :action => "update_row" })

  # DELETE
  get("/delete_function/:id_to_remove", { :controller => "functions", :action => "destroy_row" })

  #------------------------------

  # Routes for the Template resource:

  # CREATE
  get("/templates/new", { :controller => "templates", :action => "new_form" })
  post("/create_template", { :controller => "templates", :action => "create_row" })
  post("/create_template_from_user", { :controller => "templates", :action => "create_row_from_user" })
  post("/create_template_from_function", { :controller => "templates", :action => "create_row_from_function" })

  # READ
  get("/templates", { :controller => "templates", :action => "index" })
  get("/templates/:id_to_display", { :controller => "templates", :action => "show" })

  # UPDATE
  get("/templates/:prefill_with_id/edit", { :controller => "templates", :action => "edit_form" })
  post("/update_template/:id_to_modify", { :controller => "templates", :action => "update_row" })

  # DELETE
  get("/delete_template/:id_to_remove", { :controller => "templates", :action => "destroy_row" })
  get("/delete_template_from_user/:id_to_remove", { :controller => "templates", :action => "destroy_row_from_user" })
  get("/delete_template_from_function/:id_to_remove", { :controller => "templates", :action => "destroy_row_from_function" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
