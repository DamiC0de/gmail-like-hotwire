class CreateEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :emails do |t|
      t.references :user, null: false, foreign_key: true
      t.string :subject
      t.text :body
      t.boolean :read

      t.timestamps
    end
  end
end
