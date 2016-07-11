def reverse(string)
  new_string = ""

  each_character_of(string) do |char|
    new_string = char + new_string
  end

  return new_string
end

def each_character_of(string)
  string.split("").each do |char|
    yield char
  end
end

puts reverse("hello")
