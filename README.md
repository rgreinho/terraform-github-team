# GitHub Team

Create new GitHub team.

## Example Usage

```hcl
module "terraform_team" {
  source = "innovationnorway/team/github"

  name = "terraform"

  description = "Reviewing Terraform configurations"

  maintainers = ["steinpetersen-in"]
}
```

## Arguments

| Name          | Type     | Description                                                                                                                                                                                                                         |
| ------------- | -------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `name`        | `string` | **Required**. The name of the team.                                                                                                                                                                                                 |
| `description` | `string` | The description of the team.                                                                                                                                                                                                        |
| `privacy`     | `string` | The level of privacy this team should have. The options are: <br> * `secret` - only visible to organization owners and members of this team. <br> * `closed` - visible to all members of this organization. <br> Default: `closed`. |
| `maintainers` | `list`   | The `login`s of organization members to add as maintainers of the team.                                                                                                                                                             |
