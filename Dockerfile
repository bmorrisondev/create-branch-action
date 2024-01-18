FROM planetscale/pscale:v0.129.0

RUN apk --no-cache add bash jq curl

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

# Install the PlanetScale Actions helpers
COPY install-helpers.sh /install-helpers.sh
RUN chmod +x /install-helpers.sh
RUN /install-helpers.sh

ENTRYPOINT ["/entrypoint.sh"]
