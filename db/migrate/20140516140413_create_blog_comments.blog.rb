# This migration comes from blog (originally 20140516132505)
class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.integer :post_id
      t.text :text

      t.timestamps
    end
  end
end
