resource "google_project_iam_member" "tekton_sa_kms_decrypter" {
  provider = google
  role     = "roles/cloudkms.admin"
  member   = "serviceAccount:${var.tekton_sa_email}"
  project = "jx-labs-infra"
}

