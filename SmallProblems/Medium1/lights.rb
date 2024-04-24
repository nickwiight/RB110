def lights(number_of_lights)
  lights = {}
  1.upto(number_of_lights) { |number| lights[number] = false }

  1.upto(number_of_lights) do |number|
    lights.each do |light, value|
      lights[light] = !value if light % number == 0
    end
  end

  lights.select { |_, state| state }.keys
end

p lights(5)
p lights(10)
p lights(1000)
