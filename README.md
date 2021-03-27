# Dressfun 概要

*ポートフォリオ製作物です。機能の追加なども行っていきます。*

Dressfunはオシャレを楽しみたい人専用のSNS型Webアプリケーションです。
ユーザーは全身のコーディネートや部分的なアイテムの投稿をすることができます。
他人の投稿に**いいね**や**メント投稿**、**お気に入り**を登録することができます。

# 実装機能

- User
  - ユーザー登録、編集

- Post
  - 投稿、編集、削除
  - 画像複数投稿
  - いいね機能(非同期通信)
  - お気に入り登録(非同期通信)
  - コメント投稿
  - 検索機能

# 開発環境

- Ruby 2.6.3
- Rails 5.2.4.5

### 使用gem

- devise
- refile
- bootstrap
- ransack
- jquery-rails