class AddTemplateCountToFunctions < ActiveRecord::Migration[5.1]
  def change
    add_column :functions, :templates_count, :integer
  end
end
