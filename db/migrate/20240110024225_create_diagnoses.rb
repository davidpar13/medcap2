class CreateDiagnoses < ActiveRecord::Migration[7.1]
  def change
    create_table :diagnoses do |t|
      t.string :code
      t.string :title
      t.string :display

      t.timestamps
    end
  end
end
