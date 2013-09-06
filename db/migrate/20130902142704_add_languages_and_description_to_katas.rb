class AddLanguagesAndDescriptionToKatas < ActiveRecord::Migration
  def change
    add_column :kata, :language_id, :integer
    add_column :kata, :description, :text
  end
end
