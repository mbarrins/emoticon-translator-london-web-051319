require "pry"
require "yaml"

def load_library(file)
  thing = YAML.load_file(file)
  puts thing.inspect
  binding.pry

end

def get_japanese_emoticon
  emoticons = load_library('emoticons.yml')

end

def get_english_meaning
  # code goes here
end

load_library('lib/emoticons.yml')
# puts get_japanese_emoticon
