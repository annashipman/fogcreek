class FogCreek

  def initialize
    @letters = "acdegilmnoprstuw"
  end

  def hash_method(string_value)
      h = 7
      for i in 0...string_value.length do
        letter = string_value[i]
        index = @letters.index(letter)
        h = (h * 37 + index)
      end
      h
  end

  def reverse_hash(int_value)
    s = ""
    h = int_value

    while h > 7 do
      remainder = h % 37
      letter = @letters[remainder]
      s.insert(0, letter)
      h = ( (h - remainder) / 37)
    end
    s
  end

end
