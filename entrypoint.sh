#!/bin/bash
{
  # sudo service mariadb start
  # cd /home/frappe/bench
  # bench new-site site1.local

  # bench new-site --no-mariadb-socket --admin-password=admin --db-root-password=admin --install-app erpnext --set-default site1.local

  # bench --site site1.local install-app erpnext
  # bench use site1.local

  # python3 -m compileall -q /home/frappe/bench/apps/frappe/frappe 
  # python3 -m compileall -q /home/frappe/bench/apps/erpnext/erpnext

  bench start

} || {
  echo "============================================="
  echo "ERROR: entrypoint command failed to start"
  echo "============================================="
  tail -f /dev/null
}