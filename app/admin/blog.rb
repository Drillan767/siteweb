ActiveAdmin.register Article do

  form do |f|
    inputs 'Article' do
      input :titre
      input :contenu, :as => :ckeditor
      input :image, :as => :file
    end
    f.actions
  end

  permit_params :titre, :contenu, :image

end
