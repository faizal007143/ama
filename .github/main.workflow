workflow "Notify Issue" {
  on = "issues"
  resolves = ["Push"]
}

action "Push" {
  uses = "techulus/push-github-action@master"
  env = {
    MESSAGE = "New issue has been created"
    API_KEY = "6105d0d3-eb39-43e2-ae76-7c609c9f1c87"
  }
}
