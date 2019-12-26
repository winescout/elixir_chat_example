FROM elixir:1.9

RUN apt-get update && apt-get install -y inotify-tools

ENV APP_HOME /usr/src/webapp
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

RUN mix local.hex --force
RUN mix archive.install hex phx_new 1.4.11 --force

COPY . .
RUN mix deps.clean --all
RUN mix deps.get
RUN mix local.rebar --force

CMD ["mix" , "do", "deps.get", ",", "phx.server"]
