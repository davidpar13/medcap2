class CreateSexes < ActiveRecord::Migration[7.1]
  def change
    create_table :sexes do |t|
      t.string :sex_name
      t.boolean :active

      t.timestamps
    end
  end
end
