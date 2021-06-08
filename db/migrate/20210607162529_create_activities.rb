class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.string :location

      t.timestamps
    end
  end
end