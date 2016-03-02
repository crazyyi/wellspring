class CreateWellspringTaggings < ActiveRecord::Migration
  def change
    create_table :wellspring_taggings do |t|
      t.belongs_to :wellspring_entry, index: true, foreign_key: true
      t.belongs_to :wellspring_tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
