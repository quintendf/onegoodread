class ChangeLinkToText < ActiveRecord::Migration
  def change
  	change_column :articles, :link, :text
  end
end
