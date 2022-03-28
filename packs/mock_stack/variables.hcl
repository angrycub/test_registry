variable "job_name" {
  description = "The name to use as the job name which overrides using the pack name"
  type        = string
  default     = "mock-stack"
}

variable "test_name" {
  description = "This variable allows for configurable test output"
  type        = string
  default     = "test"
}

variable "region" {
  description = "The region where jobs will be deployed"
  type        = string
  default     = ""
}

variable "datacenters" {
  description = "A list of datacenters in the region which are eligible for task placement"
  type        = list(string)
  default     = ["dc1"]
}

variable "fabio_url" {
  description = "The download URL for fabio"
  type = string
  default = "https://github.com/fabiolb/fabio/releases/download/v1.5.2/fabio-1.5.2-go1.8.3-linux_amd64"
}

variable "fabio_checksum" {
  description = "The checksum for the downloaded fabio version"
  type = string
  default = "sha256:62c192a306f754b8279bf21808f725a6bae6b9de2caa59af06b62542f5e718b2"
}

variable "fabio_ui_service_name" {
  description = "the port to use for the Fabio UI"
  type = string
  default = "fabio"
}

variable "fabio_ui_port" {
  description = "the port to use for the Fabio UI"
  type = number
  default = 9998
}

variable "fabio_lb_service_name" {
  description =  "The Consul service name to register Fabio's load balancer port"
  type = string
  default = "lb"
}

variable "fabio_lb_port" {
  description = "the port to use for the Fabio Router"
  type = number
  default = 9999
}