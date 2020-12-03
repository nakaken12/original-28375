# アプリ名
#### Films「観たい映画がきっと見つかる」

<img width="1438" alt="スクリーンショット 2020-12-01 17.19.24.png" src="https://raw.githubusercontent.com/nakaken12/original-28375/18371aece2a7d313d8477170a8ef85c2c5181684/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202020-12-01%2017.19.24.png">

<br>

# 概要
鑑賞した映画のレビューを投稿したり、検索機能を使って自分好みの映画を見つけることができます。また鑑賞記録だけではなく、メモ、備忘録としてもお使い頂けます。

<br>

# 本番環境
Herokuにデプロイしています。  
下記リンクからアクセスできます。  
https://original-app-films.herokuapp.com/

ログインされる場合は、トップページのログインボタンを押してください。

＜テストユーザー用アカウント＞  
メールアドレス:sample@sample.com  
パスワード:pass1234

新規登録ボタンから新規のアカウントを作成していただくことも可能です。

<br>

# 制作背景
### 過去に鑑賞した映画を振り返ることのできるサイトが欲しい
私自身、過去にどんな映画を観たかを振り返りたくなったり、一度観たけどどんな内容かを忘れてしまうといった場面があったので、備忘録として鑑賞した映画を投稿することのできる場所が欲しかった。

### もう、映画を鑑賞した後に「ハズレだったな...」と思いたくない
「面白そう！」と期待して鑑賞した映画が、「実はハズレだった...」なんて経験をした人は少なくないはず。気になった映画を、既に鑑賞した人たちがどんな風に評価しているかを事前に知ることができれば、そういった苦い経験をせずに済むのではないかと考えた。

<br>

# 機能紹介
## トップページ・投稿一覧表示
ログインしていない場合、トップページの上部と下部それぞれにログインボタン及び新規登録ボタンが表示されます。ログインしている場合には、トップページ上部にマイページボタン及びログアウトボタンが表示されます。  

![top-page](https://raw.githubusercontent.com/nakaken12/original-28375/09143bd607761b2bfeedcb30721d90ef6fed284c/top-page.gif)

<br>

スクロールしていくと、Filmsの紹介文と新着投稿を閲覧することができます。投稿は新着順に並んでおり、トップページでは最新5件の投稿が表示されています。その他の投稿はページネーションによって2ページ目以降で管理されています。また、ユーザー自らの投稿には編集ボタンと削除ボタンが表示されます。

![pagination](https://raw.githubusercontent.com/nakaken12/original-28375/df005111fe995ebd52aee7a84b1956924ab4b126/pagination.gif)

<br>

## 新規登録・ログイン
新規登録・ログインができます。これらのユーザー管理にはdeviseを使用しています。

<img width="1438" alt="sign-up.png" src="https://raw.githubusercontent.com/nakaken12/original-28375/df005111fe995ebd52aee7a84b1956924ab4b126/sign-up.png">

<br>

<img width="1438" alt="login.png" src="https://raw.githubusercontent.com/nakaken12/original-28375/df005111fe995ebd52aee7a84b1956924ab4b126/login.png">

<br>

## 新規投稿
投稿機能の利用には、ログインしている必要があります。  
それぞれの項目を入力して「投稿する」ボタンを押します。タイトル名、ジャンル、ネタバレの有無、鑑賞記録の入力は必須です。

<img width="1438" alt="new-post.png" src="https://raw.githubusercontent.com/nakaken12/original-28375/df005111fe995ebd52aee7a84b1956924ab4b126/new-post.png">

<br>

## 評価機能
新規投稿画面の評価項目で、鑑賞した映画のオススメ度を星の数で入力することができます。星の数は0〜5つで、0.5刻みとなっています。新規投稿画面で入力した星の数による評価は、投稿一覧から確認できます。

![star-review](https://raw.githubusercontent.com/nakaken12/original-28375/df005111fe995ebd52aee7a84b1956924ab4b126/star-review.gif)

<br>

## ネタバレ機能
新規投稿画面のネタバレ項目で「ネタバレあり」を選択すると、一覧ページで表示された投稿の鑑賞記録欄に「このレビューはネタバレを含みます」と、赤文字のメッセージが表示されます。これは、意図せずにストーリー内容を知ってしまうのを防ぐ為です。続けて内容を閲覧したい場合は、このメッセージをクリックします。

![spoiler](https://raw.githubusercontent.com/nakaken12/original-28375/df005111fe995ebd52aee7a84b1956924ab4b126/spoiler.gif)

<br>

## 検索機能
ジャンル別に検索できる機能と、キーワードから検索することのできる2種類の検索機能を用意しています。

### ジャンル別検索機能
ヘッダーの「ジャンル」にマウスオーバーすると、様々なジャンルの一覧が表示されます。気になるジャンル名をクリックすると、条件と一致する投稿一覧が表示されます。

![genre](https://raw.githubusercontent.com/nakaken12/original-28375/df005111fe995ebd52aee7a84b1956924ab4b126/genre.gif)

### キーワード検索機能
ヘッダー部中央の入力欄にキーワードを入力し検索ボタンを押すと、キーワードを含む投稿一覧が表示されます。

![keyword](https://raw.githubusercontent.com/nakaken12/original-28375/df005111fe995ebd52aee7a84b1956924ab4b126/keyword.gif)

<br>

## マイページ機能
ログインしている場合、ヘッダー部右側に表示されているユーザー名がマイページボタンとなっています。クリックすると過去の投稿を振り返ることができます。

![user-page](https://raw.githubusercontent.com/nakaken12/original-28375/df005111fe995ebd52aee7a84b1956924ab4b126/user-page.gif)

<br>

他のユーザーの過去の投稿を閲覧したい場合は、投稿一覧ページに表示されているユーザー名をクリックします。

![else-user-page](https://raw.githubusercontent.com/nakaken12/original-28375/df005111fe995ebd52aee7a84b1956924ab4b126/else-user-page.gif)

<br>

# 使用技術
・ HTML<br>
・ CSS<br>
・ SCSS<br>
・ Ruby<br>
・ Ruby on Rails<br>
・ JavaScript<br>
・ MySQL<br>
・ Bootstrap<br>
・ VSCode (Visual Studio Code)<br>
・ GitHub<br>
・ Heroku<br>

<br>

# 課題や今後実装したい機能
### レスポンシブ対応
PCだけではなくスマホからの利用も想定されるので、スマホからのアクセスにも対応したレイアウトにしたい。

### ユーザー間の交流機能
現状、ユーザー同士が交流することのできる機能がないので、他のユーザーの投稿に対していいねを送るなどの機能を取り入れたい。

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