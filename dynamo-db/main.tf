resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "malcolm_bookInventory"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "ISBN"
  range_key      = "Genre"


  attribute {
    name = "ISBN"
    type = "S"
  }

  attribute {
    name = "Genre"
    type = "S"
  }
}