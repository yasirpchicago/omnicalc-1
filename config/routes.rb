Rails.application.routes.draw do
  
  get("/square/new", { :controller => "application",
  :action=> "blank_square_form"})

  get("/square/results", { :controller => "application",
  :action=> "calculate_square"})

  get("/square_root/new", { :controller => "application",
  :action=> "blank_root_form"})

  get("/square_root/results", { :controller => "application",
  :action=> "calculate_root"})

  get("/payment/new", { :controller => "application",
  :action=> "blank_payment_form"})

  get("/payment/results", { :controller => "application",
  :action=> "calculate_payment"})

  get("/random/new",{ :controller => "application", 
  :action => "blank_random_form"})
  
  get("/rand/results",{ :controller => "application", 
  :action => "calculate_random"})
end
