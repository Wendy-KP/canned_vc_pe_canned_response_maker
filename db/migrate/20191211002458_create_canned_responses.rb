class CreateCannedResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :canned_responses do |t|
      t.integer :template_id
      t.text :email_text

      t.timestamps
    end
  end
end
