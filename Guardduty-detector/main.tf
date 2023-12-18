resource "aws_guardduty_detector" "ac--28c1f314b7e1136623eeef5159700d87" {
  datasources {
    kubernetes {
      audit_logs {
        enable = false
      }
    }

    malware_protection {
      scan_ec2_instance_with_findings {
        ebs_volumes {
          enable = false
        }
      }
    }

    s3_logs {
      enable = false
    }
  }

  enable                       = var.aws_guardduty_detector_enable
  finding_publishing_frequency = var.aws_guardduty_detector_finding_publishing_frequency
}
