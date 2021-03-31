# Dressfun 概要

*ポートフォリオ製作物です。機能の追加なども行っていきます。*

&ensp;Dressfunはオシャレを楽しみたい人専用のSNS型Webアプリケーションです。<br>
&ensp;ユーザーは全身のコーディネートや部分的なアイテムの投稿をすることができます。<br>
&ensp;他人の投稿に**いいね**や**コメント投稿**、**お気に入り**を登録することができます。

## ログイン
**(お試しのアカウントがあります。下記の情報を入力してログインしてください。)**

- メールアドレス: example@gmail.com
- パスワード: Dressfun

[Dressfunサイト](http://35.73.120.94/)
(ログインは10分で自動的にログアウトします。)

# 実装機能(機能詳細は下記のリンクへ)

- User
  - ユーザー登録、編集

- Post
  - 投稿、編集、削除
  - 画像複数投稿
  - いいね機能(非同期通信)
  - お気に入り登録(非同期通信)
  - コメント投稿
  - 検索機能

### [機能詳細](https://docs.google.com/spreadsheets/d/1kk8M1Tv40J5m6eEJwI_PrQa0MZh3TbopRY_VRdUwuN4/edit#gid=0)
# 開発環境

- Ruby 2.6.3
- Rails 5.2.4.5

### 使用gem

- devise
- refile
- bootstrap
- ransack
- jquery-rails