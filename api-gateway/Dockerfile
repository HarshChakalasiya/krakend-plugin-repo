FROM devopsfaith/krakend:2.6.3 as builder

COPY plugins/ /etc/krakend/plugins/
COPY krakend.json /etc/krakend/krakend.json
RUN krakend test-plugin -s /etc/krakend/plugins/custom-plugin.so
RUN FC_ENABLE=1 \
  krakend check -t -d -c /etc/krakend/krakend.json


FROM devopsfaith/krakend:2.6.3
ENV test_env="Test message"
RUN echo "Hello" \
  && apk upgrade --no-cache --no-interactive \
  && apk add --no-cache dumb-init
COPY --chown=krakend:nogroup --from=builder /etc/krakend/ .

EXPOSE 8080
USER krakend
ENTRYPOINT ["dumb-init"]
CMD FC_ENABLE=1 \
  krakend run -c "/etc/krakend/krakend.json"
