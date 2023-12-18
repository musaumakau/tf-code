resource "aws_kms_alias" "ac--alias-002F-aws_solv_kenya_aujas_cloudtrail" {
  name          = var.aws_kms_alias_name
  target_key_id = aws_kms_key.ac--377cd5e8-28af-4800-85f6-fd07e485e156.key_id
}

resource "aws_kms_alias" "ac--alias-002F-inspector" {
  name          = var.aws_kms_alias_name
  target_key_id = aws_kms_key.ac--f27600ec-2242-4d0c-be8c-fd30231c7d46.key_id
}

resource "aws_kms_alias" "ac--alias-002F-inspector2" {
  name          = var.aws_kms_alias_name
  target_key_id = aws_kms_key.ac--215a642a-2867-402e-acff-eefb355d5bd6.key_id
}

resource "aws_kms_alias" "ac--alias-002F-inspector3" {
  name          = var.aws_kms_alias_name
  target_key_id = aws_kms_key.ac--bdc31b17-e378-4d70-ad3c-1a51aad367a2.key_id
}

resource "aws_kms_key" "ac--00512500-98ee-49b5-82ea-91a5d6f969bc" {
  customer_master_key_spec = var.aws_kms_key_customer_master_key_spec
  description              = var.aws_kms_key_description
  enable_key_rotation      = var.aws_kms_key_enable_key_rotation
  is_enabled               = var.aws_kms_key_is_enabled
  key_usage                = var.aws_kms_key_key_usage
  multi_region             = var.aws_kms_key_multi_region
  policy                   = var.aws_kms_key_policy
}

resource "aws_kms_key" "ac--0b4328c0-33bf-4262-acce-6d58e27c988b" {
  customer_master_key_spec = var.aws_kms_key_customer_master_key_spec
  description              = var.aws_kms_key_description
  enable_key_rotation      = var.aws_kms_key_enable_key_rotation
  is_enabled               = var.aws_kms_key_is_enabled
  key_usage                = var.aws_kms_key_key_usage
  multi_region             = var.aws_kms_key_multi_region
  policy                   = var.aws_kms_key_policy
}

resource "aws_kms_key" "ac--146a4f6a-c538-46d9-a3f5-79c29aefbfb0" {
  customer_master_key_spec = var.aws_kms_key_customer_master_key_spec
  description              = var.aws_kms_key_description
  enable_key_rotation      = var.aws_kms_key_enable_key_rotation
  is_enabled               = var.aws_kms_key_is_enabled
  key_usage                = var.aws_kms_key_key_usage
  multi_region             = var.aws_kms_key_multi_region
  policy                   = var.aws_kms_key_policy
}

resource "aws_kms_key" "ac--215a642a-2867-402e-acff-eefb355d5bd6" {
  customer_master_key_spec = var.aws_kms_key_customer_master_key_spec
  enable_key_rotation      = var.aws_kms_key_enable_key_rotation
  is_enabled               = var.aws_kms_key_is_enabled
  key_usage                = var.aws_kms_key_key_usage
  multi_region             = var.aws_kms_key_multi_region
  policy                   = var.aws_kms_key_policy
}

resource "aws_kms_key" "ac--2d70f0ba-a13f-4642-883a-48f115ba9106" {
  customer_master_key_spec = var.aws_kms_key_customer_master_key_spec
  description              = var.aws_kms_key_description
  enable_key_rotation      = var.aws_kms_key_enable_key_rotation
  is_enabled               = var.aws_kms_key_is_enabled
  key_usage                = var.aws_kms_key_key_usage
  multi_region             = var.aws_kms_key_multi_region
  policy                   = var.aws_kms_key_policy
}

resource "aws_kms_key" "ac--377cd5e8-28af-4800-85f6-fd07e485e156" {
  customer_master_key_spec = var.aws_kms_key_customer_master_key_spec
  enable_key_rotation      = var.aws_kms_key_enable_key_rotation
  is_enabled               = var.aws_kms_key_is_enabled
  key_usage                = var.aws_kms_key_key_usage
  multi_region             = var.aws_kms_key_multi_region
  policy                   = var.aws_kms_key_policy
}

resource "aws_kms_key" "ac--74456533-ddc2-4457-a1e6-d2c7456da609" {
  customer_master_key_spec = var.aws_kms_key_customer_master_key_spec
  description              = var.aws_kms_key_description
  enable_key_rotation      = var.aws_kms_key_enable_key_rotation
  is_enabled               = var.aws_kms_key_is_enabled
  key_usage                = var.aws_kms_key_key_usage
  multi_region             = var.aws_kms_key_multi_region
  policy                   = var.aws_kms_key_policy
}

resource "aws_kms_key" "ac--80e8aa30-cffe-4adc-ac33-8d10106d1cb0" {
  customer_master_key_spec = var.aws_kms_key_customer_master_key_spec
  description              = var.aws_kms_key_description
  enable_key_rotation      = var.aws_kms_key_enable_key_rotation
  is_enabled               = var.aws_kms_key_is_enabled
  key_usage                = var.aws_kms_key_key_usage
  multi_region             = var.aws_kms_key_multi_region
  policy                   = var.aws_kms_key_policy
}

resource "aws_kms_key" "ac--9d37b450-2749-440d-843e-c6d56bfbc5ac" {
  customer_master_key_spec = var.aws_kms_key_customer_master_key_spec
  description              = var.aws_kms_key_description
  enable_key_rotation      = var.aws_kms_key_enable_key_rotation
  is_enabled               = var.aws_kms_key_is_enabled
  key_usage                = var.aws_kms_key_key_usage
  multi_region             = var.aws_kms_key_multi_region
  policy                   = var.aws_kms_key_policy
}

resource "aws_kms_key" "ac--bdc31b17-e378-4d70-ad3c-1a51aad367a2" {
  customer_master_key_spec = var.aws_kms_key_customer_master_key_spec
  enable_key_rotation      = var.aws_kms_key_enable_key_rotation
  is_enabled               = var.aws_kms_key_is_enabled
  key_usage                = var.aws_kms_key_key_usage
  multi_region             = var.aws_kms_key_multi_region
  policy                   = var.aws_kms_key_policy
}

resource "aws_kms_key" "ac--cc3c07b7-16d3-43c1-be5e-98c28d21985f" {
  customer_master_key_spec = var.aws_kms_key_customer_master_key_spec
  description              = var.aws_kms_key_description
  enable_key_rotation      = var.aws_kms_key_enable_key_rotation
  is_enabled               = var.aws_kms_key_is_enabled
  key_usage                = var.aws_kms_key_key_usage
  multi_region             = var.aws_kms_key_multi_region
  policy                   = var.aws_kms_key_policy
}

resource "aws_kms_key" "ac--d04b41ec-0e67-453b-a9fd-808260edda46" {
  customer_master_key_spec = var.aws_kms_key_customer_master_key_spec
  description              = var.aws_kms_key_description
  enable_key_rotation      = var.aws_kms_key_enable_key_rotation
  is_enabled               = var.aws_kms_key_is_enabled
  key_usage                = var.aws_kms_key_key_usage
  multi_region             = var.aws_kms_key_multi_region
  policy                   = var.aws_kms_key_policy
}

resource "aws_kms_key" "ac--f27600ec-2242-4d0c-be8c-fd30231c7d46" {
  customer_master_key_spec = var.aws_kms_key_customer_master_key_spec
  enable_key_rotation      = var.aws_kms_key_enable_key_rotation
  is_enabled               = var.aws_kms_key_is_enabled
  key_usage                = var.aws_kms_key_key_usage
  multi_region             = var.aws_kms_key_multi_region
  policy                   = var.aws_kms_key_policy
}
