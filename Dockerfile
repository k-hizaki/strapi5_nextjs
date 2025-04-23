# Dockerfile
FROM node:22.14-bookworm-slim

RUN mkdir -p /app /app/strapi

WORKDIR /app
RUN npx create-strapi@5.12.5 strapi \
      --no-run \
      --skip-cloud \
      --dbclient sqlite \
      --example \
      --ts \
      --install \
      --no-git-init \
      --dbfile db.sqlite

WORKDIR /app/strapi

EXPOSE 1337

CMD ["npm", "run", "develop"]