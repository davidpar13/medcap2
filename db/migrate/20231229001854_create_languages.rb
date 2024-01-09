class CreateLanguages < ActiveRecord::Migration[7.1]
  def change
    create_table :languages do |t|
      t.string :language_name
      t.boolean :active

      t.timestamps
    end
  end
end
