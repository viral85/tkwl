Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  
 
      mount Spree::Core::Engine, :at => '/'
      
      
      #Legacy URL Redirects
      get '/blogs/a/15507180-team-tokyowheel-on-strava', to: redirect('/blog/20154/09/15/team-tokyowheel-on-strava')
      get '/blogs/a/8117479-wheel-rides-great-and-looks-flawless', to: redirect('/blog/2013/06/16/wheel-rides-great-and-looks-flawless')
      get '/blogs/a/8117503-we-received-the-wheels-today-and-they-are-awesome', to: redirect('/blog/2013/06/16/we-received-the-wheels-today-and-they-are-awesome')
      get '/blogs/a/8792131-new-epic-and-elite-carbon-wheels-new-website', to: redirect('/blog/2013/09/12/new-epic-and-elite-carbon-wheels-new-website')
      get '/blogs/a/9498431-new-single-wheels', to: redirect('/blog/2013/10/08/new-single-wheels')
      get '/blogs/a/10594813-tokyowheel-epic-50-video-review', to: redirect('/blog/2013/12/04/tokyowheel-epic-50-video-review')
      get '/blogs/a/10594893-tokyowheel-epic-88-video-review', to: redirect('/blog/2013/12/04/tokyowheel-epic-88-video-review')
      get '/blogs/a/10623101-new-red-epic-decals', to: redirect('/blog/2013/12/05/new-red-epic-decals')
      get '/blogs/a/10721213-tokyowheel-epic-50-ride-report-video-review', to: redirect('/blog/2013/12/10/tokyowheel-epic-50-ride-report-video-review')
      get '/blogs/a/10900989-tokyowheel-epic-50-60-red-on-a-ridley-noah', to: redirect('/blog/2013/12/16/tokyowheel-epic-50-60-red-on-a-ridley-noah')
      get '/blogs/a/10902441-tokyowheels-available-in-12-colors', to: redirect('/blog/2013/12/16/tokyowheels-available-in-12-colors')
      get '/blogs/a/11129661-tokyowheel-epic-60-ride-report-video-review', to: redirect('/blog/2013/12/27/tokyowheel-epic-60-ride-report-video-review')
      get '/blogs/a/12753773-tokyowheel-110-guarantees-explained', to: redirect('/blog/2014/03/09/tokyowheel-110-guarantees-explained')
      get '/blogs/a/15507160-new-tokyowheel-forum', to: redirect('/blog/2014/09/01/new-tokyowheel-forum')
      get '/blogs/a/15507184-tokyowheel-in-austin-tx', to: redirect('/blog/2014/09/10/tokyowheel-in-austin-tx')
      get '/blogs/a/15507168-tokyowheel-ceo-is-on-tour-in-california', to: redirect('/blog/2014/09/19/tokyowheel-ceo-is-on-tour-in-california')
      get '/blogs/a/15458853-epic-38-50-video-review', to: redirect('/blog/2014/09/13/epic-38-50-video-review')
      get '/blogs/a/14036321-tokyowheel-manufacturing-testing-factory-tour-video', to: redirect('/blog/2014/08/27/tokyowheel-manufacturing-testing-factory-tour-video')
      get '/blogs/a/15496740-epic-60s-on-an-s-work-venge-video-review', to: redirect('/blog/2014/09/27/epic-60s-on-an-s-work-venge-video-review')
      get '/blogs/a/15601628-vapor-disc-hub-upgrade-road-cyclocross-disc-brakes', to: redirect('/blog/2014/10/09/vapor-disc-hub-upgrade-road-cyclocross-disc-brakes')
      get '/blogs/a/15708856-tokyowheel-in-46-countries', to: redirect('/blog/2014/10/27/tokyowheel-in-46-countries')
      get '/blogs/a/16540488-stefan-rothe-wins-texas-state-cyclocross-championship', to: redirect('/blog/2015/01/05/stefan-rothe-wins-texas-state-cyclocross-championship')
      get '', to: redirect('')
 
          # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

end
