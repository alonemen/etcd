#!/bin/bash
#Author: shunxiang cao
#Organization: 云栖工程院

## 生成etcd ca证书
cfssl gencert -initca etcd_ca-csr.json | cfssljson -bare etcd_ca -

## 生成etcd server证书
cfssl gencert -ca=etcd_ca.pem -ca-key=etcd_ca-key.pem -config=etcd_ca-config.json -profile=www etcd_server-csr.json | cfssljson -bare etcd_server
