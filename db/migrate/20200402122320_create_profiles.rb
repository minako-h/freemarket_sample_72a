class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :family_name, null: false
      t.string :first_name, null: false
      t.string :family_name_kana, null: false
      t.string :first_name_kana, null: false
      t.date :birth_year, null: false
      t.date :birth_month, null: false
      t.date :birth_day, null: false

      t.timestamps
    end
  end
end
