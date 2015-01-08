class CreateAnalisisMensuals < ActiveRecord::Migration
  def change
    create_table :analisis_mensuals do |t|
      t.integer :hto
      t.integer :hb
      t.integer :peso_pre
      t.integer :peso_post
      t.integer :urea_pre
      t.integer :urea_post
      t.integer :urr
      t.integer :ktv
      t.integer :tgp
      t.integer :tgo
      t.string :month
      t.references :paciente

      t.timestamps
    end
  end
end
