
resource "google_project_iam_member" "tekton_sa_kms_signer" {
  provider = google
  role     = "roles/cloudkms.signer"
  member   = "serviceAccount:${var.tekton_sa_email}"
  project = "jx-labs-infra"
}

