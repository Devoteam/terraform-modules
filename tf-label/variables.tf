variable "namespace" {
  type        = string
  default     = null
  description = "The organization name, e.g. 'devoteam'"
}

variable "environment" {
  type        = string
  default     = null
  description = "The stage name 'prod', 'staging', 'dev', 'test'"
}

variable "name" {
  type        = string
  default     = null
  description = "The component name, e.g. 'app'."
}

variable "delimiter" {
  type        = string
  default     = null
  description = "Delimiter between ID elements."
}


variable "label_case" {
  type        = string
  default     = null
  description = "Letter case of label elements"

  validation {
    condition     = var.label_case == null ? true : contains(["lower", "upper"], var.label_value_case)
    error_message = "Allowed values: `lower`, `upper`."
  }
}