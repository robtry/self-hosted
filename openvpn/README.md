https://github.com/kylemanna/docker-openvpn/blob/master/docs/docker-compose.md
https://youtu.be/Ulew2JHUHfE

# crear certificados para los usuario

```sh
export CLIENTNAME="your_client_name"
# with a passphrase (recommended)
docker-compose run --rm openvpn easyrsa build-client-full $CLIENTNAME
# without a passphrase (not recommended)
docker-compose run --rm openvpn easyrsa build-client-full $CLIENTNAME nopass
```

sudo openvpn --config <file>
