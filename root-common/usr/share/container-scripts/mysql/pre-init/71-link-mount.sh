set -x

shopt -s dotglob ## para mover los archivos ocultos
set -eo pipefail

mkdir -p /silo/mysql
mv /var/lib/mysql/data /silo/mysql && \
ln -s /silo/mysql/data /var/lib/mysql/data

/usr/libexec/fix-permissions /silo/mysql
