#!/bin/bash

echo "Client name : "
read CLIENT_NAME

cd /etc/openvpn/server/easy-rsa/

/etc/openvpn/server/easy-rsa/easyrsa gen-req $CLIENT_NAME nopass
/etc/openvpn/server/easy-rsa/easyrsa sign-req client $CLIENT_NAME

echo "Generates the custom file $client.ovpn"
{
    cat /etc/openvpn/server/client-common.txt
    echo "<ca>"
    cat /etc/openvpn/server/easy-rsa/pki/ca.crt
    echo "</ca>"
    echo "<cert>"
    sed -ne '/BEGIN CERTIFICATE/,$ p' /etc/openvpn/server/easy-rsa/pki/issued/"$CLIENT_NAME".crt
    echo "</cert>"
    echo "<key>"
    cat /etc/openvpn/server/easy-rsa/pki/private/"$CLIENT_NAME".key
    echo "</key>"
    echo "<tls-crypt>"
    sed -ne '/BEGIN OpenVPN Static key/,$ p' /etc/openvpn/server/tc.key
    echo "</tls-crypt>"
} > ~/"$CLIENT_NAME".ovpn && echo "Created file ~/$CLIENT_NAME.ovpn"