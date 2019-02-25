resource "github_team" "main" {
  name = "${var.name}"

  description = "${var.description}"

  privacy = "${var.privacy}"
}

resource "github_team_membership" "maintainers" {
  count = "${length(var.maintainers)}"

  team_id = "${github_team.main.id}"

  username = "${element(var.maintainers, count.index)}"

  role = "maintainer"
}
