class CreateAnalisisMensuals < ActiveRecord::Migration
  def change
    create_table :analisis_mensuals do |t|
      t.decimal :hto
      t.decimal :hb
      t.decimal :peso_pre
      t.decimal :peso_post
      t.decimal :urea_pre
      t.decimal :urea_post
      t.decimal :urr
      t.decimal :ktv
      t.decimal :tgp
      t.decimal :tgo
      t.date :fecha
      t.references :paciente

      t.timestamps
    end
  end
end
