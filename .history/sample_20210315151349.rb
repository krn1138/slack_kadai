# ここに、slackにメッセージを送る処理を書き込む。
require "slack-notify"
require 'clockwork'
require 'active_support/time'
# ENV['LOGIN_URL']

sample = SlackNotify::Client.new(webhook_url: ENV['LOGIN_URL'])
sample.notify("Hello There!")

module Clockwork
    sample_two = SlackNotify::Client.new(webhook_url: ENV['LOGIN_URL'])

    handler do |job|
        puts "Running #{job}"
      end
    
      every(10.seconds, 'ソースコードリーディング課題')
      sample_two.notify "ソースコードリーディング課題"

    
      every(1.day, 'midnight.job', :at => '00:00')
  # ここに、「どれくらいの周期で処理をするのか？」というClockworkのメソッドを記述します
  # ここに、slackで一定時間ごとに送りたい処理と設定を書き込みます
    # every(3.minites, 'ソースコードリーディング課題') do
    # sample_two.notify "ソースコードリーディング課題"
    # end
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