# openvpn-client-config

Generate a configuration file for OpenVPN client. Best used with [Nyr](https://github.com/Nyr/)'s [openvpn-install](https://github.com/Nyr/openvpn-install/).

    root@server:[/scripts]: ./openvpn-client-config.sh
    Client name :
    mabihan-github
    Using SSL: openssl OpenSSL 1.1.1  11 Sep 2018
    Generating a RSA private key
    ..................................................................+++++
    ....+++++
    writing new private key to '/etc/openvpn/server/easy-rsa/pki/easy-rsa-12374.kd2Qc3/tmp.1oT5jD'
    -----

    Using SSL: openssl OpenSSL 1.1.1  11 Sep 2018
    Using configuration from /etc/openvpn/server/easy-rsa/pki/easy-rsa-12396.3gLga8/tmp.pS8L9m
    Check that the request matches the signature
    Signature ok
    The Subject's Distinguished Name is as follows
    commonName            :ASN.1 12:'ChangeMe'
    Certificate is to be certified until Oct  8 21:26:37 2022 GMT (825 days)

    Write out database with 1 new entries
    Data Base Updated

    Generates the custom file .ovpn
    Created file ~/mabihan-github.ovpn

## Prerequisite
- OpenVPN
- EasyRSA
