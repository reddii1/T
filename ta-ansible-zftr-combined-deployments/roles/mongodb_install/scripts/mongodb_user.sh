#!/bin/bash
mongo <<EOF
if (db.getUser("$mongodb_nectar_username_fact") == null) {  
	db.createUser( { user: "$mongodb_nectar_username_fact", pwd: "$mongodb_nectar_password_fact", roles: ["readWrite"] })
}
use xms
exit
EOF