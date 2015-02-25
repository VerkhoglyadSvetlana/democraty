ActiveAdmin.register Post do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :body
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  form do |f|
    f.inputs do
      f.input :title  
      f.input :body, :as => :ckeditor
    end
    f.actions
  end

  index do
    column :title
    column :body, sortable: :body do |post|
      truncate(post.body, :length => 200)
    end
    actions
  end

end
