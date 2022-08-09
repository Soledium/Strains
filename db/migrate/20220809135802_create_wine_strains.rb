class CreateWineStrains < ActiveRecord::Migration[7.0]
  def change
    create_table :wine_strains do |t|
      t.references :wine, null: false, foreign_key: true
      t.references :strain, null: false, foreign_key: true
      t.integer :percentage

      t.timestamps
    end
  end
end
