resource "google_project_iam_member" "tekton_sa_storage_object_admin_binding" {
  provider = google
  role     = "roles/cloudkms.cryptoKeyDecrypter"
  member   = "serviceAccount:${var.tekton_sa_email}"
  project = "jx-labs-infra"
}
