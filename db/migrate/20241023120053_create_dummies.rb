class CreateDummies < ActiveRecord::Migration[8.0]
  def change
    create_table :dummies do |t|
      t.timestamps
    end
  end
end
