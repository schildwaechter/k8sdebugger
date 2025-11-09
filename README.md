# k8sdebugger

A simple debugger image.

For a more sophisticated solution better use [nicolaka/netshoot](https://github.com/nicolaka/netshoot)

## Using

Start a pod

```shell
if ! kubectl get namespace k8sdebugger > /dev/null 2>&1; then; kubectl create namespace k8sdebugger; fi;
kubectl run --namespace k8sdebugger k8sdebugger --image=docker.io/schildwaechter/k8sdebugger:latest --command -- "/bin/bash" "-c" "--" "while true; do sleep 30; done;"
```

Connect to it

```shell
kubectl exec --namespace k8sdebugger --stdin --tty k8sdebugger -- /bin/bash
```

Remember to clean up

```shell
kubectl delete namespace k8sdebugger
```
