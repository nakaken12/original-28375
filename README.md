# アプリ名
Films「観たい映画がきっと見つかる」

<img width="1438" alt="スクリーンショット 2020-12-01 17.19.24.png" src="https://raw.githubusercontent.com/nakaken12/original-28375/18371aece2a7d313d8477170a8ef85c2c5181684/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202020-12-01%2017.19.24.png">


<br>

# 概要
ユーザーが鑑賞した映画のレビューを投稿したり、検索機能を使って自分好みの映画を見つけることができます。また鑑賞記録だけではなく、メモ、備忘録としてもお使い頂けます。

<br>

# 本番環境
Herokuにデプロイしています。<br>
下記リンクからアクセスできます。<br>
https://original-app-films.herokuapp.com/

ログインされる場合は、トップページのログインボタンを押してください。

＜テストユーザー用アカウント＞<br>
メールアドレス:sample@sample.com<br>
パスワード:pass1234

新規登録ボタンから新規のアカウントを作成していただくことも可能です。


<br>

# 制作背景
### 過去に鑑賞した映画を振り返ることのできるサイトが欲しい
私自身、過去にどんな映画を観たかを振り返りたくなったり、一度観たけどどんな内容かを忘れてしまうといった場面があったので、備忘録として鑑賞した映画を投稿することのできる場所が欲しかった。

### もう、映画を鑑賞した後に「ハズレだったな...」と思いたくない
「面白そう！」と期待して鑑賞した映画が、「実はハズレだった...」なんて経験をした人は少なくないはず。気になった映画を、既に鑑賞した人たちがどんな風に評価しているかを事前に知ることができれば、そういった悲劇も減るのではないかと考えた。


<br>

# 機能紹介


<br>

# 使用技術


<br>

# 課題や今後実装したい機能


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