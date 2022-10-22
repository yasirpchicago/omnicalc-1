class ApplicationController < ActionController::Base
  def blank_square_form
    render ({ :template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square
    #  Parameters: {"hi"=>"42"}

    @num = params.fetch("hi").to_f
    @square_of_num = @num * @num
    render ({ :template => "calculation_templates/square_results.html.erb"})
  end

  def blank_root_form
    render ({ :template => "calculation_templates/squareroot_form.html.erb"})
  end

  def calculate_root
    #  Parameters: {"hi"=>"42"}

    @number = params.fetch("hi").to_f
    @square_root = @number**(0.5) 


    render ({ :template => "calculation_templates/squareroot_results.html.erb"})
  end

  def blank_payment_form
    render ({ :template => "calculation_templates/payment_form.html.erb"})
  end

  def calculate_payment
    #  Parameters: {"hi"=>"42"}

    @apr = params.fetch("APR").to_f  
    @num_of_years = params.fetch("Years").to_f
    @principal = params.fetch("Principal").to_f

    @apr_percentage = (@apr / 100)/12
    @num_of_months = @num_of_years * 12

    @numerator = @apr_percentage * @principal
    @denominator = (1 - ((1 + @apr_percentage)) **(-@num_of_months))
    @pmt_result = (@numerator/@denominator).round(2)

    @pmt_result = @pmt_result.to_s(:currency, { :precision => 2 })
    @apr = @apr.to_s(:percentage, { :precision => 4 } ) 
    @principal = @principal.to_s(:currency, { :precision => 2 })

    render ({ :template => "calculation_templates/payment_results.html.erb"})
  end

  def blank_random_form
    render({ :template => "calculation_templates/random_form.html.erb"})
    end
  def calculate_random
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)

   
    render({ :template => "calculation_templates/random_results.html.erb"})  
  end 
end
