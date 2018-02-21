#!/bin/sh

geosetup(){
  if ! test -f /var/lib/glusterd/geo-replication/secret.pem ; then
      gluster-georep-sshkey generate --no-prefix
  fi
  if ! test -f /var/lib/glusterd/geo-replication/common_secret.pem.pub ; then
      gluster-georep-sshkey generate --no-prefix
  fi

  echo "Script Ran Successfully"
  exit 0
}

sleep 3
geosetup

