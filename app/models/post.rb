class Post < ActiveRecord::Base
	belongs_to :category
	has_many :comments
	has_attached_file :image, :styles => { :full => "1000x300>", :medium => "500x150", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
