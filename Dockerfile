# Dockerfile.min
FROM odoo:17.0

# Locales básicos (opcional)
RUN apt-get update -y && apt-get install -y --no-install-recommends locales netcat-openbsd \
    && rm -rf /var/lib/apt/lists/* \
    && locale-gen en_US.UTF-8

ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 LANGUAGE=en_US.UTF-8

# Copia tus addons
COPY ./custom_addons /mnt/custom_addons

# Arranque directo de Odoo (sin entrypoint.sh)
CMD ["odoo",
     "--http-port", "$PORT",
     "--proxy-mode",
     "--addons-path=/usr/lib/python3/dist-packages/odoo/addons,/mnt/extra-addons,/mnt/custom_addons"]
