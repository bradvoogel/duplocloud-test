module "dynamodb-table" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "4.3.0"

  name                        = "${var.env}-statefile-lock"
  hash_key                    = "LockID"
  table_class                 = "STANDARD"
  deletion_protection_enabled = false
  billing_mode = "PAY_PER_REQUEST"

  attributes = [
    {
      name = "LockID"
      type = "S"
    }
    
  ]

}
