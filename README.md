# Strapi + Nextjs boilerplate

## 構成
- Strapi：Node 22 LTS + SQLite
- Web：Next.js（ホスト ./web マウント）

## 起動・停止
```bash
# ビルド＆起動（バックグラウンド）
docker-compose up --build -d
# ログ確認
docker-compose logs -f strapi docker-compose logs -f web
# 停止
docker-compose down
```

## ポート
- Strapi 管理画面： http://localhost:1337/admin
- Web アプリ： http://localhost:3000

## ボリューム
- `strapi`：/app/strapi/db.sqlite を永続化
- Web の node_modules はコンテナ内のみ

## Tips
- Strapi 管理ユーザーは初回 `/admin` で作成
- DB 切替は環境変数やDockerfileの編集で対応可能