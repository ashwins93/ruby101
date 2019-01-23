states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

def urlify(string)
  string.split.join('-').downcase
end

def imperative_urls(states)
  urls = []
  
  states.each do |state|
    urls << urlify(state)
  end
  urls
end
p imperative_urls(states)

def functional_urls(states)
  states.map { |state| urlify(state) }
end
p functional_urls(states)

def gen_urls(states)
  states.map { |state| "https://example.com/" + urlify(state) }
end
p gen_urls(states)

def imperative_singles(states)
  singles = []
  
  states.each do |state|
    if state.split.length == 1
      singles << state
    end
  end
  singles
end
p imperative_singles(states)

def functional_singles(states)
  states.select { |state| state.split.length == 1 }
end
p functional_singles(states)
