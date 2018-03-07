ActiveAdmin.register Page do
  permit_params :title, :section_id, :body, :order, :is_published, :menu_display, :featured
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  index do
    column :id
    column :title, :sorteable => :title
    column :section, :sorteable => :section
    column :featured, :sorteable => :featured
    column :created_at, :sorteable => :created_at
    column :order, :sorteable => :order
    actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :title, :label => "Title"
      f.input :section, :label => "Sections"
      f.input :body, :as => :html_editor, :label => "Body"
      f.input :order, :label => "Order"
      f.input :featured, :label =>"Featured"
      f.input :is_published, :label =>"Is Published"
      f.input :menu_display, :label =>"Display Menu"
      f.actions
    end
  end

end
