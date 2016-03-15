class CreateLegislators < ActiveRecord::Migration
  def change
    create_table :legislators do |t|
      t.string :name
      t.string :party
      t.string :website

      t.timestamps null: false
    end
  end
end
