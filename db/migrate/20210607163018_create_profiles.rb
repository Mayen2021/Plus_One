class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.string :job_title
      t.string :language

      t.timestamps
    end
  end
end
