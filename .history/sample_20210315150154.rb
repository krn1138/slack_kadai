# ここに、slackにメッセージを送る処理を書き込む。
require "slack-notify"
require 'clockwork'
require 'active_support/time'
# ENV['LOGIN_URL']

sample = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/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')

module Clockwork
    client.notify("Hello There!")
    # sample = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/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')
  # ここに、「どれくらいの周期で処理をするのか？」というClockworkのメソッドを記述します
  # ここに、slackで一定時間ごとに送りたい処理と設定を書き込みます
    every(10.seco, 'ソースコードリーディング課題') do
    puts "ソースコードリーディング課題"
    end
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