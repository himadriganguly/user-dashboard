Mobiler::Engine.routes.draw do
  get 'email' => 'application#email_list'
  get 'test' => 'application#activefile_test'
end
