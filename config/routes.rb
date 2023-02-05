Rails.application.routes.draw do
  root 'inp_files#new'
  post 'inp_files/upload'
  get 'inp_files/new'
  get 'inp_files/success'
  get 'inp_download:id', to: 'inp_files#download'
  get 'inp_files/:id', to: 'inp_files#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
