require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:num_dice/:sides") do
  @num_dice = params['num_dice'].to_i
  @sides = params['sides'].to_i
  @rolls = []
  @num_dice.times do
    die = rand(1..@sides)
    @rolls.push(die)
  end
  erb(:flexible)
end
