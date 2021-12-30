variable "secret_name" {
  type        = string
  description = "Name of secret"
}

variable "rotation_days" {
  type        = string
  description = "Number of days to rotate the secret"
}