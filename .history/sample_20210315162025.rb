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

  every(10.seconds, 'sample_two')
 
end


# require "slack-notify"
# require 'clockwork'
# # require 'slack-ruby-client'

# # Slack.configure do |config|
# #   # APIトークンを設定
# #   config.token = 'xoxb-1869164786081-1849826223302-wbKMe9rYsJjLwrDPvAAkl14f'
# # end

# # APIクライアントを生成
# client = Slack::Web::Client.new
# sample = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/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')

# # #チャンネル名 of @ユーザー名
# channel = '#general'

# # メッセージ
# text = 'Hello World'

# response = client.chat_postMessage(channel: channel, text: text, as_user: false)

# pp response