resource "google_project_iam_member" "member" {
    for_each =toset(var.name)
    project = var.project_id
    role = each.value == "ark" ? "roles/editor" : each.value == "ark2" ? "roles/owner" : "roles/viewer"
    member = "user:${each.value}@gmail.com"
}