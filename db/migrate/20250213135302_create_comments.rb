class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|

      t.timestamps
      t.text   :content ,               null: false
      t.references :prototype,   foreign_key: true      
      t.references :user,        foreign_key: true      
    end
  end
end
