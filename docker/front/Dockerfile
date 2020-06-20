# デフォルトだとnpmやyarnがroot権限で動くため、モジュールやビルドファイルがrootで作成
# ファイル削除の際などに面倒なのでパーミッションをユーザと合わせます。

ARG NODE_VERSION

FROM node:${NODE_VERSION}-alpine

# RUNコマンドを && で連結実行
RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash \
    && npm install -g nuxt

# change user
ARG USER_ID
ARG GROUP_ID

RUN deluser node && \
    addgroup -g ${GROUP_ID} -S node && \
    adduser -u ${USER_ID} -S node -G node

USER node:node

WORKDIR /app
