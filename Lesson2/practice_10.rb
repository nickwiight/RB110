p([{ a: 1 }, { b: 2, c: 3 }, { d: 4, e: 5, f: 6 }].map do |hash|
  temp_hash = {}
  hash.each do |key, value|
    temp_hash[key] = value + 1
  end
  temp_hash
end)
