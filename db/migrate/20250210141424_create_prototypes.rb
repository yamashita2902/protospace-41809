class CreatePrototypes < ActiveRecord::Migration[7.1]
  def change
    create_table :prototypes do |t|

      t.timestamps
      t.string :title,              null: false, default: ""
      t.text   :catch_copy,         null: false
      t.text   :concept,        null: false 
      t.references :user, foreign_key: true        
    end
  end
end
