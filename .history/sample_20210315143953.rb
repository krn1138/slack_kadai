# ここに、slackにメッセージを送る処理を書き込む。
require "slack-notify"
require 'clockwork'
require 'active_support/time'
# ENV['LOGIN_URL']
module Clockwork
    sample = SlackNotify::Client.new(webhook_url: '（https://hooks.slack.com/services/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）')
  # ここに、「どれくらいの周期で処理をするのか？」というClockworkのメソッドを記述します
  # ここに、slackで一定時間ごとに送りたい処理と設定を書き込みます
    every(3.minutes, 'ソースコードリーディング課題') do
    puts "ソースコードリーディング課題"
    end
end