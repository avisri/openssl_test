# openssl_test

##optional 
```
chown -R  $(whoami):admin /usr/local 
xcode-select --install
brew install openssl
```

##To compile and install and run

```
make clean
make
sudo mkdir /var/ssltest/ 
sudo cp ssltest.out /usr/local/ssltest
sudo /usr/local/ssltest/ssltest.out 
```

##Uninstall/ Remove  
```
sudo rm -rf /usr/local/ssltest
```
##Notes
*Note: ensure you have the proper xcode and brew ssl libs insstalled 

```
$xode-select -v
xcode-select version 2343.

$brew info openssl

openssl: stable 1.0.2d (bottled)
OpenSSL SSL/TLS cryptography library
https://openssl.org/

This formula is keg-only.
Apple has deprecated use of OpenSSL in favor of its own TLS and crypto libraries

/usr/local/Cellar/openssl/1.0.1i (430 files, 15M)
  Poured from bottle
/usr/local/Cellar/openssl/1.0.2a-1 (463 files, 18M)
  Poured from bottle
/usr/local/Cellar/openssl/1.0.2d_1 (464 files, 17M)
  Poured from bottle
From: https://github.com/Homebrew/homebrew/blob/master/Library/Formula/openssl.rb
==> Dependencies
Build: makedepend ✘
==> Options
--universal
	Build a universal binary
--without-check
	Skip build-time tests (not recommended)
==> Caveats
A CA file has been bootstrapped using certificates from the system
keychain. To add additional certificates, place .pem files in
  /usr/local/etc/openssl/certs

and run
  /usr/local/opt/openssl/bin/c_rehash

This formula is keg-only, which means it was not symlinked into /usr/local.

Apple has deprecated use of OpenSSL in favor of its own TLS and crypto libraries

Generally there are no consequences of this for you. If you build your
own software and it requires this formula, you'll need to add to your
build variables:

    LDFLAGS:  -L/usr/local/opt/openssl/lib
    CPPFLAGS: -I/usr/local/opt/openssl/include

```


