RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model Iphone do
    field :phone_type do 
      label "Type"
    end
    field :model do
      label "Model"
    end
    field :size do
      label "Size (GB)"
    end
    field :color do 
      label "Color"
    end
    field :description do 
      label "Description"
    end
    field :price do 
      label "Price ($)"
    end
  end

  config.model Mac do
    field :mac_type do 
      label "Type"
    end
    field :size do
      label "Size (inch)"
    end
    field :color do 
      label "Color"
    end
    field :description do 
      label "Description"
    end
    field :price do 
      label "Price ($)"
    end
  end

  config.model Watch do
    field :watch_type do 
      label "Type"
    end
    field :color do 
      label "Color"
    end
    field :description do 
      label "Description"
    end
    field :price do 
      label "Price ($)"
    end
  end
end
