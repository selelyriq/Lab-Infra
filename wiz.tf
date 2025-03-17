resource "wiz_cicd_scan_policy" "iac" {
  name        = "IaC Scan Policy"
  description = "Scan IaC code for security vulnerabilities"
  iac_params {
    count_threshold             = 3
    severity_threshold          = "CRITICAL"
    builtin_ignore_tags_enabled = false
    ignored_rules = [
      "fd7dd0c6-4953-4b36-bc39-004ec3d870db",
      "063fb380-9eda-4c08-a31b-9211ee37bd42",
    ]
    custom_ignore_tags = {
      key              = "testkey1"
      value            = "testval1"
      ignore_all_rules = false
      rule_ids = [
        "063fb380-9eda-4c08-a31b-9211ee37bd42",
      ]
    }
  }
}

resource "wiz_cicd_scan_policy" "vulnerabilities" {
  name        = "Vulnerabilities Scan Policy"
  description = "Scan for vulnerabilities in the code"
  disk_vulnerabilities_params {
    ignore_unfixed = true
    package_allow_list = [
      "lsof",
      "sudo",
      "apt",
    ]
    package_count_threshold = 3
    severity_threshold      = "LOW"
  }
}

resource "wiz_cicd_scan_policy" "secrets" {
  name        = "Secrets Scan Policy"
  description = "Scan for secrets in the code"
}
