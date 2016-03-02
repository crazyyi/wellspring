class CreateWellspringTaggings < ActiveRecord::Migration
  def change
    create_table :wellspring_taggings do |t|
      t.belongs_to :entry, index: true, foreign_key: true
      t.belongs_to :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
