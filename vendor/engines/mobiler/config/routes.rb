Mobiler::Engine.routes.draw do
  root to: 'application#email_list'
  get 'email' => 'application#email_list'
  get 'test' => 'application#activefile_test'
end
