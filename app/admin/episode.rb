ActiveAdmin.register Episode do
  permit_params :anime_id, :number, :link, :season_id
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  form do |f|
    f.inputs do
      f.input :anime_id, :label => 'Anime', :as => :select, :collection => Anime.all
      f.input :season_id, :label => 'Season', :as => :select, :collection => Season.all.each
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
