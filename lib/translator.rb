require "pry"
require "yaml"

def load_library(file)
  thing = YAML.load_file(file)
  # puts thing.inspect
  # binding.pry
  # get_meaning = thing.map{|k,v| [v[1], k]}.to_h
  # get_emoticon = thing.map{|k,v| [v[0], v[1]]}.to_h
  {
    "get_meaning"=> thing.map{|k,v| [v[1], k]}.to_h,
    "get_emoticon" => thing.map{|k,v| [v[0], v[1]]}.to_h
  }

end

def get_japanese_emoticon(file, emoticon)
  emoticons = load_library(file)
  emoticons["get_emoticon"][emoticon]
end

def get_english_meaning(file, emoticon)
  emoticons = load_library(file)
  emoticons["get_meaning"][emoticon]
end

# load_library('lib/emoticons.yml')
# puts get_japanese_emoticon
