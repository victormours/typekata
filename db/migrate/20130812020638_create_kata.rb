class CreateKata < ActiveRecord::Migration
  def change
    create_table :kata do |t|
      t.string :name
      t.text :text
      t.timestamps
    end
  end
end
