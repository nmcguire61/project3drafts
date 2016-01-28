require 'pry-byebug'
require 'steam_web_api'



def main
  set_key
  puts `clear`
  puts "command line steam Wooooooo!"
end

def mmmminipulations
  player = SteamWebApi::Player.new(76561197999244486)
  library = player.owned_games(include_played_free_games: true, include_appinfo: true)
  # print library.success # boolean value indicates if response was succesful
  # random_game = library.games[rand(library.games.length)]
    # random_game = library.games.appid[]
  # print "You randomed #{random_game['name']}, steam ID #{random_game['appid']} \n"
  # random_game_stats = player.stats_for_game(random_game['appid'])
    # friend.summary.profile['personaname']
    player.summary.profile['personaname']


  binding.pry;""
end


def set_key
  SteamWebApi.configure do |config|
    config.api_key = "FBA3057268773988C88F0543D8C6C794"
  end
end

main

mmmminipulations
