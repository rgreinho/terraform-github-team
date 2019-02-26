data "github_team" "parent" {
  count = var.parent_team != "" ? 1 : 0

  slug = var.parent_team
}

resource "github_team" "main" {
  name = var.name

  description = var.description

  privacy = var.privacy

  parent_team_id = var.parent_team != "" ? data.github_team.parent[0].id : null
}

resource "github_team_membership" "maintainers" {
  count = length(var.maintainers)

  team_id = github_team.main.id

  username = var.maintainers[count.index]

  role = "maintainer"
}

resource "github_team_membership" "members" {
  count = length(var.members)

  team_id = github_team.main.id

  username = var.members[count.index]

  role = "member"
}

