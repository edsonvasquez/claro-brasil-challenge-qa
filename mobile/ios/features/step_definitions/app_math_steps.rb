Given("I started Simple Calculator app") do
    @app.main_app
  end
  
  When("I add numbers in first_number and second_number") do
    @fst_number = @app.send_number(ID["app"]["first_number"])
    @snd_number = @app.send_number(ID["app"]["second_number"])
    puts "\nNumbers tested:\nFirst Number = #{@fst_number}\nSecond Number = #{@snd_number}\n"
  end
  
  When("pressed at math operator {string}") do |op_id|
    @base.click_element(ID["app"][op_id])
    @check_result = @app.check_operation(@fst_number, @snd_number, op_id)
  end
  
  Then("the result have to be according to the math operation {string}") do |operation|
    calc_result = @app.result_return(ID["app"]["app_result"])
    expect(@check_result).to eql calc_result
    puts "\nOperation #{operation} results = #{calc_result}"
  end
  