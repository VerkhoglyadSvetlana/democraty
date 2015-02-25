ActiveAdmin.register User do
  permit_params :first_name, :last_name, :email, :admin, :password
  
  index do
    column :first_name
    column :last_name
    column :email
    column :admin 
    column :last_sign_in_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :first_name 
      f.input :last_name
      f.input :email
      f.input :admin
      f.input :password
    end
    f.actions
  end
end
