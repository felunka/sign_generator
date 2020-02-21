Rails.application.routes.draw do
  get '/', to: 'generator#show'
  post '/generate', to: 'generator#generate'
end
