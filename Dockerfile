FROM elixir:1.7

ADD . /app

WORKDIR /app

ENV MIX_ENV test

RUN mix local.hex --force && \
    mix local.rebar --force

RUN mix deps.get && \
    mix deps.compile

CMD ["MIX_ENV=test mix test"]