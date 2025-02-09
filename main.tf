resource "google_project_iam_member" "member" {
    project = var.project_id
    role = "roles/viewer"
    member = "user:ark@mail.com"
}


resource "google_project_iam_member" "member_1" {
    for_each =toset(var.name)
    project = var.project_id
    role = each.value == "ark1" ? "roles/editor" : "roles/viewer"
    member = "user:${each.value}@mail.com"
}



resource "google_project_iam_member" "member_2" {
    for_each = tomap(var.newname)
    project = var.project_id
    role = each.key
    member = "user:${each.value}@mail.com"
}


