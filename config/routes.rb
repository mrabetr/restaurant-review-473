Rails.application.routes.draw do
  # collection
  # member

  resources :restaurants do
    collection do
      get :top
    end

    member do
      get :chef
    end

    resources :reviews, only: [:new, :create]
    # these routes need to be nested because we can't create a review without
    # knowing which restaurant it belongs to.
  end


  resources :reviews, only: [:destroy]
  # this destroy route does no need to be nested because
  # we do not need to know the `restaurant_id` to destroy a *review*.
  # We only need to know the id of the review in order to find it from the DB
  # and destroy it.


  # /reviews/new
end
