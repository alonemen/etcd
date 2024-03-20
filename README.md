# Etcd集群二进制部署脚本

版本: Etcd-3.5.12

`二进制包下载：`<https://github.com/etcd-io/etcd/releases/download/v3.5.12/etcd-v3.5.12-linux-amd64.tar.gz>


## 一、编辑配置文件
### 1.1 添加集群节点IP地址

- ./group_vars/hosts

```
# 参考格式
[etcd]
127.0.0.1 etcd_name=etcd-1 ansible_ssh_user=root ansible_ssh_port=22
```
- ./group_vars/all.yml

```
cert_hosts:
  ## 包含所有etcd节点IP
  etcd:
  ## 按照下面格式填写IP地址
    - 127.0.0.1
    - 10.0.0.1
```

## 二、执行
### 2.1 创建证书

```
$ etcdone -1
```

### 2.2 安装Etcd

```
$ etcdone -2
```
