require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:add_form)
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @first_num + @second_num

  erb(:add_result)
end

get("/subtract") do
  erb(:subtract_form)
end

get("/wizard_subtract") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @second_num - @first_num

  erb(:subtract_result)
end

get("/multiply") do
  erb(:multiply_form)
end

get("/wizard_multiply") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @first_num * @second_num 

  erb(:multiply_result)
end

get("/divide") do
  erb(:divide_form)
end

get("/wizard_divide") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result =  @first_num / @second_num

  erb(:divide_result)
end
