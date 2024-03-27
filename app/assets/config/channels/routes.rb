# config/routes.rb
Rails.application.routes.draw do
  # Other routes...

  mount ActionCable.server => '/cable'
end
