# Strapi5 + Nextjs boilerplate

## 構成
- バックエンド(strapi)：Node 22 LTS + SQLite
- フロントエンド(web)：Next.js（ホスト ./web マウント）
- Docker + Docker-compose

## 初期設定方法

Dockerとdocker-composeは必要です。

```
git clone https://github.com/k-hizaki/strapi5_nextjs.git
cd strapi5_nextjs
docker-compose up --build -d`
```

Strapi 管理画面にて設定
http://localhost:1337/admin

`web` フォルダ以下を適切に開発

## 初回以外

### ログ確認
`docker-compose logs -f strapi`
`docker-compose logs -f web`

### 停止
`docker-compose down`

## 画面
- Strapi 管理画面： http://localhost:1337/admin
- Web アプリ： http://localhost:3000

## データ
- `strapi`：/app/strapi/db.sqlite を永続化
- Web の node_modules はコンテナ内のみ

## Tips
- Strapi 管理ユーザーは初回 `/admin` で作成
- DB 切替は環境変数やDockerfileの編集で対応可能（初期化は必要です）