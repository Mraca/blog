class AddConnentionPostsToCategories < ActiveRecord::Migration
  def change
  	change_table :posts do |p|
  		p.references :category
  	end
  end
end
