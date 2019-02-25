variable "name" {
  type = "string"

  description = "The name of the team."
}

variable "description" {
  type = "string"

  default = ""

  description = "The description of the team."
}

variable "privacy" {
  type = "string"

  default = "closed"

  description = "The level of privacy this team should have."
}

variable "maintainers" {
  type = "list"

  default = []

  description = "The logins of organization members to add as maintainers of the team."
}

variable "members" {
  type = "list"

  default = []

  description = "The logins of organization members to add as normal members of the team."
}
