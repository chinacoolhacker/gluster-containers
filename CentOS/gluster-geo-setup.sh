#!/bin/sh

geosetup(){
  touch /var/lib/glusterd/geo-replication/authorized_keys
  chmod 600 /var/lib/glusterd/geo-replication/authorized_keys

# wait glusterd 
  sleep 10

  if ! test -f /var/lib/glusterd/geo-replication/secret.pem ; then
      gluster-georep-sshkey generate --no-prefix
  fi


  if ! test -f /var/lib/glusterd/geo-replication/common_secret.pem.pub ; then
      gluster-georep-sshkey generate --no-prefix
  fi

  echo "Script Ran Successfully"
  exit 0
}

geosetup

