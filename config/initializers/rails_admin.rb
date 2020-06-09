RailsAdmin.config do |config|
    config.main_app_name = ["Sistema Gerencial Integrado", ""]

    config.navigation_static_links = {
      'Alterdata' => 'https://www.alterdata.com.br/',
      'UCA' => 'https://uca.alterdata.com.br/'
    }
     
    config.navigation_static_label = "Lins Úteis"

    config.default_hidden_fields = {
      show: [],
      edit: [:id, :created_at, :updated_at, :remember_created_at, :reset_password_sent_at]
    }

  ### Popular gems integration

  # == Devise ==
   config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  config.model "PaperTrail::Version" do
    visible false
  end

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

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
end
