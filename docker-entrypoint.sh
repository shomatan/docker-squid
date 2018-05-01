#!/bin/sh

set -e

# Ensure permissions are set correctly on the Squid cache + log dir.
chown -R squid:squid /var/cache/squid
chown -R squid:squid /var/log/squid

# Prepare the cache using Squid.
echo "Initializing cache..."
squid -z

# Give the Squid cache some time to rebuild.
sleep 5

# Launch squid
echo "Starting Squid..."
exec squid -NYCd 1