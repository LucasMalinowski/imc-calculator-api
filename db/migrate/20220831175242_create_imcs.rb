class CreateImcs < ActiveRecord::Migration[5.1]
  def change
    create_table :imcs do |t|
      t.float :height
      t.float :weight
      t.float :final_imc

      t.timestamps
    end
  end
end
