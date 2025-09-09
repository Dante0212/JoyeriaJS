#!/bin/sh
set -e

# Limpieza ligera opcional
rm -rf /tmp/* || true

# Puedes hacer migraciones puntuales aquí (opcional):
# odoo -d "$PGDATABASE" -u joyeria_reparaciones --stop-after-init || true

# Lanzar Odoo en primer plano (exec para no dejar /bin/sh como PID 1)
exec odoo --http-port "${PORT:-8069}" --proxy-mode \
  --addons-path="/usr/lib/python3/dist-packages/odoo/addons,/mnt/extra-addons,/mnt/custom_addons" \
  --db_host="${PGHOST}" --db_port="${PGPORT}" --db_user="${PGUSER}" --db_password="${PGPASSWORD}" "$@"
