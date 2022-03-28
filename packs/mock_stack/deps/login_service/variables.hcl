variable "job_name" {
  description = "The name to use as the job name which overrides using the pack name"
  type        = string
  default     = "login-service"
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

variable "http_echo_url" {
  description = "The download URL for http_echo"
  type        = string
  default     = "https://github.com/fabiolb/fabio/releases/download/v1.5.2/fabio-1.5.2-go1.8.3-linux_amd64"
}