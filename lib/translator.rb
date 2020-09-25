require 'pry'
require 'yaml'

def load_library (emo_path)
emo = {}
YAML.load_file(emo_path).each do |key,value|
  emo[key] = {}
emo[key][:english] = value[0]
emo[key][:japanese] = value[1]
    end
emo
end

def get_japanese_emoticon(emo_path,emoticon)
  load_library(emo_path).each do |key, value|
   if value[:english] == emoticon
     binding.pry
   end
  end
end

def get_english_meaning(emo_path,emoticon)
load_library(emo_path).each do |key,value|
  if value[:japanese] == emoticon
    return key
    end
  end
  return "Sorry, that emoticon was not found"
end
