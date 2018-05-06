class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.timestamp :created_at
      t.timestamp :ended_at
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
