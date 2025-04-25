FROM coredns/coredns:1.11.4 AS base
FROM alpine:3.15 AS final
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

COPY --from=base /coredns /coredns
RUN set -eux; \
    /coredns --version | grep '1.11.4' -A100 -B100

RUN apk add --no-cache ca-certificates

RUN apk add --no-cache inotify-tools

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh
EXPOSE 53/tcp 53/udp
ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "/coredns" ]
