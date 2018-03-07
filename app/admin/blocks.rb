ActiveAdmin.register Block do
  permit_params :title, :show_title, :body, :position, :display, :class_suffix, :order, :is_published
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
  column :position, :sorteable  => :section
  column :display, :sorteable  => :display
  column :order, :sorteable => :order
  column :created_at, :sorteable => :created_at
  actions
end

form do |f|
  f.inputs "Details" do
    f.input :title, :label => "Title"
    f.input :show_title, :label => "Show Title"
    f.input :body, :as => :html_editor, :label => "Body"
    f.input :position, :label => "Position", :as => :select, :collection => [["Jumbotron","jumbotron"],["Block","block"]]
    f.input :display, :label => "Display", :as => :select, :collection => [["All pages","all"],["Home page","home"],["All pages but home","nohome"]]
    f.input :order, :label =>"Order"
    f.input :class_suffix, :label =>"Class Suffix"
    f.input :is_published, :label =>"Is Published"
    f.actions
  end
end

end
