require 'uri'
require 'net/http'
require 'json'

def load_config config_file
  @config = JSON.parse(File.read(config_file))
end

def search_url
  @config['search_url'] % @config['search_term']
end

def get_html url
  Net::HTTP.get(URI.parse(URI::encode(url)))
end

def extract_magnet_link doc
  /magnet:\?xt=.*?(?=\')/.match(doc).to_s
end

def start_torrent magnet_link
  system("transmission-remote -w '#{@config['location']}' -a '#{magnet_link}' --torrent-done-script #{@config['after_torrent_script']}")
end

load_config 'config.json'
doc = get_html search_url
magnet_link = extract_magnet_link doc
start_torrent magnet_link
