Kubernetes的网络组件主要包括以下几个核心部分：

## CNI (Container Network Interface)
CNI是Kubernetes网络的标准接口，定义了容器网络的规范。常见的CNI插件包括：
- **Flannel** - 简单的overlay网络解决方案，适合小规模集群
- **Calico** - 提供网络策略和路由功能，支持BGP协议
- **Weave Net** - 自动发现的网络解决方案
- **Cilium** - 基于eBPF的高性能网络和安全解决方案

## kube-proxy
kube-proxy是运行在每个节点上的网络代理组件，负责实现Service的抽象。它维护网络规则，实现从Service到Pod的流量转发。支持三种代理模式：
- **iptables模式** - 默认模式，使用iptables规则进行流量转发
- **IPVS模式** - 使用Linux IPVS，提供更好的性能和负载均衡算法
- **userspace模式** - 早期模式，现在很少使用

## CoreDNS
CoreDNS是Kubernetes的默认DNS服务器，为集群内的服务提供域名解析。它替代了早期的kube-dns，提供更灵活的配置和更好的性能。

## Service网络
Service是Kubernetes中的服务抽象，提供稳定的网络端点。主要类型包括：
- **ClusterIP** - 集群内部访问
- **NodePort** - 通过节点端口暴露服务
- **LoadBalancer** - 通过云提供商负载均衡器暴露
- **ExternalName** - 将服务映射到外部DNS名称

## Ingress Controller
Ingress Controller管理外部访问集群内服务的HTTP和HTTPS路由。常见的实现包括：
- **NGINX Ingress Controller**
- **Traefik**
- **HAProxy Ingress**
- **Istio Gateway**

## 网络策略 (Network Policies)
NetworkPolicy是Kubernetes的安全特性，允许定义Pod间的通信规则，控制流量的进出。需要CNI插件支持才能生效。

这些组件协同工作，为Kubernetes集群提供完整的网络功能，包括Pod间通信、服务发现、负载均衡和网络安全等。
