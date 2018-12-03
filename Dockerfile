FROM microsoft/dotnet:2.1-sdk-alpine

ENV APP_DIR /src/app

RUN mkdir -p ${APP_DIR}

WORKDIR ${APP_DIR}

COPY . .

RUN dotnet build

ENTRYPOINT ["/bin/sh"]
