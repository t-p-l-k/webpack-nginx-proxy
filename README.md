###Usage
1. Run `docker-compose build` to build image.
2. Run `docker-compose up ` to start container (use `-d` arg to run in background).

###Setup
1. Update `conf.d/frontend.conf` to use your local network IP and mock domain address (current values: `192.168.1.81` and `*.df.loc`)
2. Create private key and self-signed certificates and place them in `ssl/private/myssl.key` and `ssl/certs/myssl.crt` respectively.
3. Add related entries to your hosts file.

Example hosts entries:
```
192.168.1.81 df.loc
192.168.1.81 tplk.df.loc
192.168.1.81 admin.df.loc
```

`localhost` can't be used in nginx config cause it'll point to Docker container's `localhost`.
