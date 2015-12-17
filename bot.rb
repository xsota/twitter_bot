#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require "twitter"


API_KEY = ""
API_SECRET = ""
TOKEN=""
TOKEN_SECRET=""

client = Twitter::REST::Client.new do |config|
  config.consumer_key = API_KEY
  config.consumer_secret = API_SECRET
  config.access_token        = TOKEN
  config.access_token_secret = TOKEN_SECRET
end

client.update("Hello 清潔なトイレ")
