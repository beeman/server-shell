FROM node:12-alpine

WORKDIR /workspace

RUN yarn config set cache-folder ~/.yarn

RUN apk add --update --no-cache git tar curl vim zsh

RUN sh -c "$(curl -fsSL https://raw.github.com/beeman/server-shell/master/tools/install.sh)"

ENTRYPOINT ["/bin/sh", "-c"]

CMD zsh
