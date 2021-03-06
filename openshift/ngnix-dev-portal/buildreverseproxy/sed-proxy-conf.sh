#!/bin/bash
# The logic to start up your application should be put in this
# script. The application will work only if it binds to
# $OPENSHIFT_INTERNAL_IP:8080
# nohup $OPENSHIFT_REPO_DIR/diy/testrubyserver.rb $OPENSHIFT_INTERNAL_IP $OPENSHIFT_REPO_DIR/diy > $OPENSHIFT_DIY_LOG_DIR/server.log 2>&1 &
# replace the $OPENSHIFT_INTERNAL_IP and $OPENSHIFT_INTERNAL_PORT before starting up the server
sed -e "s@`echo '$DEV_PORTAL_URL'`@`echo $DEV_PORTAL_URL`@g" ${NGINX_APP_ROOT}/src/nginx-proxy.conf.template > ${NGINX_APP_ROOT}/etc/nginx.d/nginx-proxy.conf
