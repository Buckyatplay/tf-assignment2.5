locals {
  name_prefix = "choonyee"
}

resource "aws_dynamodb_table" "bookinventory" {
  name           = "${local.name_prefix}-bookinventory"
  hash_key       = "ISBN"
  range_key = "Genre"

  billing_mode   = "PAY_PER_REQUEST"

  attribute {
    name = "ISBN"
    type = "S"
  }

   attribute {
    name = "Genre"
    type = "S"
  }
}


