class String
  define_method(:find_replace) do |find, replace|
    words = self.split(" ")
    words.each_with_index do |word, index|
      if word == find
        words[index].replace(replace)
      end
    end
    words.join(" ")
  end
end
