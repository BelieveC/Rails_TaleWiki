class RemoveHeadingFromStory < ActiveRecord::Migration
  def change
  	remove_column :stories, :heading
  end
end
