require "pry"
require "yaml"

def load_library(file)
  binding.pry
  file = YAML.load_file(file)

end

def get_japanese_emoticon
  emoticons = load_library('emoticons.yml')

end

def get_english_meaning
  # code goes here
end

load_library('emoticons.yml')
# puts get_japanese_emoticon
