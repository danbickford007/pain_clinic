# This migration comes from blog (originally 20140516131437)
class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
