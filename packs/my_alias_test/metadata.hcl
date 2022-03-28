app {
  url = ""
  author = "HashiCorp"
}

pack {
  name = "my_alias_test"
  description = "This pack tests dependencies"
  url = "github.com/angrycub/test_registry/packs/my_alias_test"
  version = "0.0.1"
}

dependency "child1" {
  source = "./deps/child1"
}
dependency "child2" {
  source = "./deps/child2"
}
