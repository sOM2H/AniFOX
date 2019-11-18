ActiveAdmin.register Episode do
  permit_params :number, :link, :season_id
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  form do |f|
    f.inputs do
      f.input :season, label: 'Season', as: :select, collection: Season.all
      f.input :number
      f.input :link
      f.actions
    end
  end
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
