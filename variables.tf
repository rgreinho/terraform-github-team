variable "name" {
  type = string

  description = "The name of the team."
}

variable "description" {
  type = string

  default = null

  description = "The description of the team."
}

variable "privacy" {
  type = string

  default = "closed"

  description = "The level of privacy this team should have."
}

variable "parent_team" {
  type = string

  default = ""

  description = "The name of a team to set as the parent team."
}

variable "maintainers" {
  type = list(string)

  default = []

  description = "The logins of organization members to add as maintainers of the team."
}

variable "members" {
  type = list(string)

  default = []

  description = "The logins of organization members to add as normal members of the team."
}

