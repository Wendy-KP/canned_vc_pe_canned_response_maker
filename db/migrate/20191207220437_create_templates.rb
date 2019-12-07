class CreateTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :templates do |t|
      t.text :description
      t.text :template_text
      t.integer :function_id
      t.integer :user_id

      t.timestamps
    end
  end
end
