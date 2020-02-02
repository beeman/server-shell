FROM node:12-alpine

WORKDIR /workspace

RUN yarn config set cache-folder ~/.yarn

RUN apk add --update --no-cache git tar curl vim zsh the_silver_searcher shadow

RUN sh -c "$(curl -fsSL https://raw.github.com/beeman/server-shell/master/tools/install.sh)"

RUN usermod -s /bin/zsh root

ENTRYPOINT ["/bin/zsh"]
