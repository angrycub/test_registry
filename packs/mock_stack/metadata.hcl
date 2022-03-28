app {
  url = ""
  author = "Charlie Voiselle"
}

pack {
  name = "mock_stack"
  description = "mock_stack"
  url = "github.com/hashicorp/nomad-pack/fixtures/test_registry/packs/simple-raw-exec"
  version = "0.0.1"
}

dependency "login_service" {
  source = "./deps/login_service"
}

dependency "profile_service" {
  source = "./deps/profile_service"
}
