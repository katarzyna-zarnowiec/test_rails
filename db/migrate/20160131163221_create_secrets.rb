class CreateSecrets < ActiveRecord::Migration
  def change
    create_table :secrets do |t|
      t.string :image
      t.string :text

      t.timestamps null: false
    end
  end
end
