Rails.application.routes.draw do
  get "/greet" => "greet#hello"
  get "/contact" => "contact#form"
  get "/contact_submitted" => "contact#submitted"
  get "/rps" => "rps#game"
  get "/rps/result" => "rps#result"
  get "/dice" => "dice#game"
  get "/dice/roll" => "dice#roll"
  get "/dice/goal" => "dice#goal"
end
