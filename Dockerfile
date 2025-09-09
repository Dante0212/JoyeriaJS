FROM odoo:17.0

USER root
RUN apt-get update -y && apt-get install -y --no-install-recommends locales netcat-openbsd \
 && rm -rf /var/lib/apt/lists/* \
 && locale-gen en_US.UTF-8

WORKDIR /app

COPY --chmod=755 entrypoint.sh /usr/local/bin/entrypoint_custom.sh
COPY ./custom_addons /mnt/custom_addons
COPY ./odoo.conf /etc/odoo/odoo.conf

ENV ODOO_RC=/etc/odoo/odoo.conf
ENV ADDONS_PATH=/usr/lib/python3/dist-packages/odoo/addons,/mnt/extra-addons,/mnt/custom_addons

ENTRYPOINT ["/usr/local/bin/entrypoint_custom.sh"]
CMD []
