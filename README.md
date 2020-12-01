# アプリ名
Films「観たい映画がきっと見つかる」

<img width="1438" alt="スクリーンショット 2020-12-01 17.19.24.png" src="https://raw.githubusercontent.com/nakaken12/original-28375/18371aece2a7d313d8477170a8ef85c2c5181684/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202020-12-01%2017.19.24.png">


<br>

# 概要
ユーザーが鑑賞した映画のレビューを投稿したり、検索機能を使って自分好みの映画を見つけることができます。また鑑賞記録だけではなく、メモ、備忘録としてもお使い頂けます。

<br>

# 本番環境


<br>

# 制作背景


<br>

# DEMO


<br>

# 工夫したポイント


<br>

# 使用技術


<br>

# 今後実装したい機能


<br>

# DB設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false | 
| email    | string | null: false |
| password | string | null: false |

### Association
- has_many :posts

## posts テーブル

| Column  | Type     | Options     |
| ------- | -------- | ----------- |
| content | text   | null: false | 
| spoiler | boolean | null: false, default: false |
| rate | float |
| genre_id | integer | null: false |
| user  | references | null: false, foreign_key: true |
| title | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :title
- belongs_to_active_hash :genre

## titles テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| title_name   | string | null: false |

### Association
- has_many :posts