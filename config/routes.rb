Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, :defaults => { :format => "json" } do
    namespace :v1 do
      resource :resume do
        collection do
          get "view", :to => "resume_pdf#view",
                      :defaults => { :format => "pdf" }
        end
      end
    end
  end

end
