class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
