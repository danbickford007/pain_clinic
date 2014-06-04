# This migration comes from blog (originally 20140516141746)
class AddAuthorIdToBlogPosts < ActiveRecord::Migration
  def change
    add_column :blog_posts, :author_id, :integer
  end
end
