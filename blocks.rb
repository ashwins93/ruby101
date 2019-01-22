def sandwich
  puts "top bread"
  yield
  puts "bottom bread"
end

def tag(tagname, text)
  html = "<#{tagname}>#{text}</#{tagname}>"
  yield html
end
