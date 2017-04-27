Rails.application.routes.draw do
	get 'employees/custom'
get'/employees/relocate_request' , to: 'employees#relocate_request' 
  resources :employees
  resources :cities
  resources :managers

end