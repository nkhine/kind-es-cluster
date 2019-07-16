## Creating the kubernetes cluster

```terminal
git clone https://github.com/nkhine/kind-cluster
cd kind-cluster/elastic
kind delete cluster
kind create cluster --config config
export KUBECONFIG="$(kind get kubeconfig-path --name="kind")"
kubectl cluster-info
kubectl get --all-namespaces -o
kubectl get --all-namespaces -o wide
kubectl get nodes --all-namespaces -o wide
kubectl get pods --all-namespaces -o wide
kubectl get pods -o wide
kubectl run elasticsearch --image=docker.elastic.co/elasticsearch/elasticsearch:7.2.0 --env="discovery.type=single-nodeexport 
kubectl describe svc elasticsearch
kubectl port-forward service/elasticsearch 9200:9200
```

## Working with the es-cluster

```terminal
curl http://localhost:9200
{
  "name" : "elasticsearch-cb4c565c7-q6m2c",
  "cluster_name" : "docker-cluster",
  "cluster_uuid" : "eTGxo4BdT0ma2u759hF3iQ",
  "version" : {
    "number" : "7.2.0",
    "build_flavor" : "default",
    "build_type" : "docker",
    "build_hash" : "508c38a",
    "build_date" : "2019-06-20T15:54:18.811730Z",
    "build_snapshot" : false,
    "lucene_version" : "8.0.0",
    "minimum_wire_compatibility_version" : "6.8.0",
    "minimum_index_compatibility_version" : "6.0.0-beta1"
  },
  "tagline" : "You Know, for Search"
}
curl http://localhost:9200/_cat/health?v
epoch      timestamp cluster        status node.total node.data shards pri relo init unassign pending_tasks max_task_wait_time active_shards_percent
1563301839 18:30:39  docker-cluster green           1         1      0   0    0    0        0             0                  -                100.0%
curl http://localhost:9200/_cat/nodes?v
ip        heap.percent ram.percent cpu load_1m load_5m load_15m node.role master name
10.44.0.1           12          98  12    0.97    1.64     1.59 mdi       *      elasticsearch-cb4c565c7-q6m2c

```
