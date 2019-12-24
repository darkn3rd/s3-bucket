# s3-bucket

A simple Terraform module to create an s3 bucket

## Usage

```terraform
module "my_new_bucket" {
  source       = "github.com/darkn3rd/s3-bucket"
  name         = "mycompany-mybucket"
  user_enabled = false
}
```
