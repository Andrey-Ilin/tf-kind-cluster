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
