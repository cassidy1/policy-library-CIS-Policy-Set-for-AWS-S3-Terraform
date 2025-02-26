// Copyright (c) HashiCorp, Inc.
// SPDX-License-Identifier: BUSL-1.1

import "module" "report" {
  source = "./modules/report/report.sentinel"
}

import "module" "tfresources" {
  source = "./modules/tfresources/tfresources.sentinel"
}

import "module" "tfplan-functions" {
  source = "./modules/tfplan-functions/tfplan-functions.sentinel"
}

import "module" "tfconfig-functions" {
  source = "./modules/tfconfig-functions/tfconfig-functions.sentinel"
}

policy "s3-block-public-access-account-level" {
    source = "./policies/s3-block-public-access-account-level.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "s3-block-public-access-bucket-level" {
    source = "./policies/s3-block-public-access-bucket-level.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "s3-require-mfa-delete" {
  source = "./policies/s3-require-mfa-delete.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "s3-require-ssl" {
  source = "./policies/s3-require-ssl.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "s3-enable-object-logging-for-write-events" {
  source = "./policies/s3-enable-object-logging-for-events.sentinel"
  enforcement_level = "soft-mandatory"
  params = {
    event_type = "WriteOnly"
  }
}

policy "s3-enable-object-logging-for-read-events" {
  source = "./policies/s3-enable-object-logging-for-events.sentinel"
  enforcement_level = "soft-mandatory"
  params = {
    event_type = "ReadOnly"
  }
}
