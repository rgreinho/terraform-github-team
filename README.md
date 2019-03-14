# GitHub Team

Create new GitHub team.

## Example Usage

```hcl
module "terraform_team" {
  source = "innovationnorway/team/github"

  name = "terraform"

  description = "Reviewing Terraform configurations"

  maintainers = ["steinpetersen-in"]

  members = ["innovationnorway-bot", "joakimhellum-in"]
}
```

## Arguments

| Name          | Type     | Description                                                                                                                                                                                                                         |
| ------------- | -------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `name`        | `string` | **Required**. The name of the team.                                                                                                                                                                                                 |
| `description` | `string` | The description of the team.                                                                                                                                                                                                        |
| `privacy`     | `string` | The level of privacy this team should have. The options are: <br> * `secret` - only visible to organization owners and members of this team. <br> * `closed` - visible to all members of this organization. <br> Default: `closed`. |
| `parent_team` | `string` | The `slug` of a team to set as the parent team.                                                                                                                                                                                     |
| `maintainers` | `list`   | The `login`s of organization members to add as maintainers of the team.                                                                                                                                                             |
| `members`     | `list`   | The `login`s of organization members to add as normal members of the team.                                                                                                                                                          |
## Module outputs

Available outputs are listed below, along with their description
| output | description |
|---|---|
|`id`| The ID of the created team. |
|`slug`|  The slug of the created team, which may or may not differ from name, depending on whether name contains "URL-unsafe" characters. |

## Limitations

Due to current limitations of the Terraform language, items added or removed from the `maintainers` and `members` lists, will also update subsequent items with indexes greater than where the addition or removal was made.
