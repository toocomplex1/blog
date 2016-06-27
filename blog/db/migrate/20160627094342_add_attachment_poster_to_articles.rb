class AddAttachmentPosterToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :poster
    end
  end
  
  #when you are going to do rollback it will do this
  def self.down
    remove_attachment :articles, :poster
  end
end
