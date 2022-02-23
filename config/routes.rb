Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'

  post 'tasks/create', to: 'tasks#create'

  get 'tasks/:id/edit', to: 'tasks#edit',  as: :edit_task # preciso criar um edit como um get, pois irei
  # exibir as infos da task e o seu respectivo id para depois deixar
  # que o user a atualize(com o metodo #update,que, este sim, sera um patch)

  get 'tasks/:id', to: 'tasks#show', as: :task


end
