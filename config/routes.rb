Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', :to => redirect('/about.html')

  post "/graphql", to: "graphql#execute"

  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"

  namespace :api, :defaults => { :format => "json" } do
    namespace :v1 do
      resource :resume, :only => [:show]  do
        collection do
          get "view", :to => "resume_pdf#view",
                      :defaults => { :format => "pdf" }
        end
      end

      resources :projects, :only => [:index]
    end
  end

end
