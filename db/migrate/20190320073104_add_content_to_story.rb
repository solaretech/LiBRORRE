class AddContentToStory < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :content, :text
  end
end
