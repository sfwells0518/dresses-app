Rails.application.routes.draw do
  get "/dresses" => "dresses#index"
  get "/dresses/:id" => "dresses#show"
  post "/dresses" => "dresses#create"
  patch "/dresses/:id" => "dresses#update"
  delete "/dresses/:id" => "dresses#destroy"
end
