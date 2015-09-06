class AddConnectionCommentsToPosts < ActiveRecord::Migration
  def change
  	change_table :comments do |p|
  		p.references :post
  	end
  end
end
