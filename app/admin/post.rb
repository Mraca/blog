ActiveAdmin.register Post do
  permit_params :title, :content, :category_id, :created_at, :updated_at, :image_file_name, :image, :image_content_type, :image_file_size, :image_updated_at

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Detailsdupa" do
    f.input :title
    f.input :content
    f.input :category_id, :label => 'Category', :as => :select, :collection => Category.all
    f.input :image, :as => :file
    # f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:full))
  end
  f.submit
 end

end
