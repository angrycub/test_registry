job "[[- .my.job_name -]]" {
  datacenters = [[ .my.datacenters | toJson ]]
  type = "system"
  update {
    stagger = "5s"
    max_parallel = 1
  }
  group "linux-amd64" {
    network {
      port "http" {static = [[ .my.fabio_lb_port ]] }
      port "ui" {static = [[ .my.fabio_ui_port ]] }
    }
    service {
      tags = ["fabio", "lb"]
      port = "ui"
      check {
        name     = "fabio ui port is alive"
        type     = "tcp"
        interval = "10s"
        timeout  = "2s"
      }
      check {
        name     = "fabio health check"
        type     = "http"
        path     = "/health"
        interval = "10s"
        timeout  = "2s"
      }
    }
    task "fabio" {
      constraint {
        attribute = "${attr.cpu.arch}"
        operator  = "="
        value     = "amd64"
      }
      constraint {
        attribute = "${attr.kernel.name}"
        operator  = "="
        value     = "linux"
      }
      driver = "exec"
      config { command = "[[- .my.fabio_url | base -]]" }
      artifact {
        source = "[[- .my.fabio_url -]]"
        [[- if ne .my.fabio_checksum "" ]]
        options {
          checksum = "[[- .my.fabio_checksum -]]"
        }
        [[- end ]]
      }
      resources {
        cpu = 200
        memory = 32
      }
    }
  }
}

