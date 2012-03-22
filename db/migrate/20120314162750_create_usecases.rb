class CreateUsecases < ActiveRecord::Migration
  def change
    create_table :usecases do |t|
      t.string :name
      t.text :description
      t.integer :project_id

      t.timestamps
    end
  end
end
