terraform {
  required_providers {
    kind = {
      source  = "tehcyx/kind"
      version = "0.2.1"
    }
    flux = {
      source  = "fluxcd/flux"
      version = "1.0.0-rc.3"
    }
  }
}

resource "kind_cluster" "this" {
  name = "kind-cluster"
  config = <<-EOF
        apiVersion: kind.x-k8s.io/v1alpha4
        kind: Cluster
        nodes:
        - role: control-plane
        - role: worker
    EOF
}
