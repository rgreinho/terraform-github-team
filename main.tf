data "github_team" "parent" {
  count = var.parent_team != "" ? 1 : 0

  slug = var.parent_team
}

resource "github_team" "main" {
  name = var.name

  description = var.description

  privacy = var.privacy

  parent_team_id = element(concat(data.github_team.parent.*.id, ["0"]), 0)
}

resource "github_team_membership" "maintainers" {
  count = length(var.maintainers)

  team_id = github_team.main.id

  username = element(var.maintainers, count.index)

  role = "maintainer"
}

resource "github_team_membership" "members" {
  count = length(var.members)

  team_id = github_team.main.id

  username = element(var.members, count.index)

  role = "member"
}

