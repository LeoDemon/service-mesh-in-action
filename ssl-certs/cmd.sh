## 0. Enter PEM pass phrase: abc897


## 1. root cert
# generate root cert, output: `privkey.pem` and `ca.pem`
openssl req -out ca.pem -new -x509 -days 3650 -subj "/C=CN/CN=root/emailAddress=jwkljh@163.com"
## this command will output two files: privkey.pem and ca.pem


## 2. server cert
# generate server private key, output: `server.key`
openssl genrsa -out server.key 2048

# generate server cert request, output: `server.req`
openssl req -key server.key -new -out server.req -subj "/C=CN/CN=istio/emailAddress=jwkljh@163.com"

# generate server cert, output: `server.crt`
openssl x509 -req -in server.req -CAkey privkey.pem -CA ca.pem -days 3650 -CAcreateserial -CAserial serial -out server.crt

# merge server cert and server private key, output: `server.pem`
cat server.key server.crt > server.pem

# verify server cert
openssl verify -CAfile ca.pem server.pem

# generate public key from private key
openssl pkey -pubout -in server.key > server_pub.key


## 3. client cert
# generate client private key, output: `client.key`
openssl genrsa -out client.key 2048

# generate client cert request, output: `client.req`
openssl req -key client.key -new -out client.req -subj "/C=CN/CN=istiocli/emailAddress=jwkljh@163.com"

# generate client cert, output: `client.crt`
openssl x509 -req -in client.req -CAkey privkey.pem -CA ca.pem -days 3650 -CAserial serial -out client.crt

# merge client cert and client private key, output: `client.pem`
cat client.key client.crt > client.pem

# verify client cert
openssl verify -CAfile ca.pem client.pem

