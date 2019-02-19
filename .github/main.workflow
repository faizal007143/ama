workflow "Notify Issue" {
  on = "issue_comment"
}

workflow "Issue Comment" {
  resolves = ["Send Push Notification"]
  on = "issue_comment"
}

action "Send Push Notification" {
  uses = "techulus/push-github-action@0.0.1"
  env = {
    API_KEY = "6105d0d3-eb39-43e2-ae76-7c609c9f1c87"
    MESSAGE = "New comment on an issue"
  }
}
