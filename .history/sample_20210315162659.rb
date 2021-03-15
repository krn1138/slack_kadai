# ここに、slackにメッセージを送る処理を書き込む。
require "slack-notify"
require 'clockwork'
require 'active_support/time'
require 'dotenv'
Dotenv.load

module Clockwork  

  handler do |job|
    sample_two = SlackNotify::Client.new(webhook_url: ENV['LOGIN_URL'])
    sample_two.notify("ソースコードリーディング課題")
  end

  every(3.minites, 'sample_two')
 
end