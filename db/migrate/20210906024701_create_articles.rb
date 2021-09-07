class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string     :title        , null: false
      t.text       :text         , null: false
      t.integer    :genre_id     , null: false
      t.integer    
      t.timestamps
    end
  end
end
