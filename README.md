# Setup Instruction

## Setup Atlantis Using Helm

1. Add the helm repo for Atlantis

```shell
helm repo add runatlantis https://runatlantis.github.io/helm-charts
```

2. Get and update the values file for the Atlantis helm charts

```shell
helm inspect values runatlantis/atlantis > values.yaml
```

3. Install atlantis with the updated `values.yaml` file

```shell
helm install atlantis runatlantis/atlantis -f values.yaml
```

4. Setup a webhook on Github (or your preferred Git server)
    Ensure you set a webhook secret
