class CreateSelectedThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :selected_themes do |t|
      t.string :name
      t.references :profile, foreign_key: true
      t.timestamps
    end
  end
end
