class CreateCsArticles < ActiveRecord::Migration
  def change
    create_table :cs_articles do |t|
      t.text :link

      t.timestamps
    end
  end
end
