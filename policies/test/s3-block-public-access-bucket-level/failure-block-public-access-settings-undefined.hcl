mock "tfplan/v2" {
  module {
    source = "./mocks/policy-failure-block-public-access-settings-undefined/mock-tfplan-v2.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-failure-block-public-access-settings-undefined/mock-tfconfig-v2.sentinel"
  }
}

mock "tfconfig-functions" {
  module {
    source = "../../../modules/tfconfig-functions/tfconfig-functions.sentinel"
  }
}

mock "tfplan-functions" {
  module {
    source = "../../../modules/tfplan-functions/tfplan-functions.sentinel"
  }
}

mock "tfresources" {
  module {
    source = "../../../modules/tfresources/tfresources.sentinel"
  }
}

mock "report" {
  module {
    source = "../../../modules/mocks/report/report.sentinel"
  }
}

test {
 rules = {
    main = false
  }
}