terraform {
    backend "s3" {
        bucket = "terraform-state-bucket-030794"
        key = "sample/terraform.tfstate"
        region = "us-east-1"
    }
}
output "bucket_name" {
    value = "test"
}