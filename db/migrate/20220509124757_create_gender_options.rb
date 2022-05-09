class CreateGenderOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :gender_options do |t|
      t.string :name

      t.timestamps
    end
  end
end
