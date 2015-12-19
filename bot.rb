#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require "twitter"

class BOT 
  API_KEY = ""
  API_SECRET = ""
  TOKEN = ""
  TOKEN_SECRET = ""
  
  def initialize()
    API_KEY << checkKeys("KEYS/API_KEY")
    API_SECRET << checkKeys("KEYS/API_SECRET")
    TOKEN << checkKeys("KEYS/TOKEN")
    TOKEN_SECRET << checkKeys("KEYS/TOKEN_SECRET")
  end
  
  def checkKeys(path)
    #ファイルがあるけど中身が空の時もファイルが無かった時と同じようなメッセージ出すか
    if File.exist?(path)
      return File.read(path).chomp
    end
    
    #ファイルが無かった時に出力する文章だれか考えて
    File.open(path, "w").close()    
    puts "ファイル無いよ"
    return "unko"
  end

  def hoge()
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = API_KEY
      config.consumer_secret = API_SECRET
      config.access_token        = TOKEN
      config.access_token_secret = TOKEN_SECRET
    end

    client.update("hogehoehogehoge")
  end

end

bot = BOT.new
bot.hoge
