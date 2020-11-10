# S3 Serverless Static Site with CloudFront and TLS (ACM)

This Terraform configuration creates a serverless static website on S3 in an effortless way. It manages all the configuration for you and deploys all the required resources for a serverless, stable and secure static website in a matter of minutes.

**Pre-requirements**
- :cloud: A registered domain
- :cactus: A Route53 Hosted Zone
- :globe_with_meridians: Nameservers already propagated

**Inputs Required** (will be prompted)
- Desired AWS Region (eg. "*us-east-1*")
- Your domain name TLD (eg. "*terraform.fun*")
- Hosted Zone ID (eg. "*Z01255143BIYAFXULLTAA*")

**This Terraform script creates the following resources for you**

  - S3 Bucket with Static Hosted Site enabled
  - IAM policy to secure the bucket from public access
  - CloudFront distribution with that S3 bucket as origin
  - TLS Certificates issued by AWS ACM and used by CloudFront distribution
  - Route 53 Records
    -   A record (root) poiting to CloudFront Distribution
    -   CNAME record (www) poniting to the root domain
    -   CNAME record (ACM) to validate the issued certificate for root domain
    -   CNAME record (ACM) to validate the issued certificate for subdomains

# Get Started

Assuming you have configured AWS CLI locally, installed Terraform and cloned the `terraform eureka` repo!

**Start Deploying**

```sh
$ cd static-site
$ terraform init
$ terraform apply
```

That's it, I hope you enjoyed it. Feel free to open any issues if you go through one.

**Free To Use**