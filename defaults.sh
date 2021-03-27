#!/bin/bash

# Dock
defaults write com.apple.dock autohide -bool true  # Automatically hide or show the Dock （Dock を自動的に隠す）
defaults write com.apple.dock persistent-apps -array  # Wipe all app icons from the Dock （Dock に標準で入っている全てのアプリを消す、Finder とごみ箱は消えない）
defaults write com.apple.dock tilesize -int 55  # Set the icon size （アイコンサイズの設定）
defaults write com.apple.dock magnification -bool true  # Magnificate the Dock （Dock の拡大機能を入にする）

# Trackpad
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true  # タップでクリック
defaults write "Apple Global Domain" "com.apple.swipescrolldirection" -int 1  # スクロール方向: ナチュラルのチェックを外す
defaults write "Apple Global Domain" com.apple.trackpad.scaling 0.875  # 軌跡の速さ

# TODO: keyboard settings

# reload
sudo killall cfprefsd
