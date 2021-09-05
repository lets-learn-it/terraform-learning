# Access S3 from EC2

## Run plan and apply

```sh
terraform plan
terraform apply
```

## Connect to EC2

```sh
ssh -i ~/.ssh/sshkey ec2-user@13.233.225.247
```

## Try to list S3 buckets

```sh
aws s3 ls
```

## Troubleshooting

**1. If role or policy is wrong**

```sh
[ec2-user@ip-172-31-37-238 ~]$ aws s3 ls
Unable to locate credentials. You can configure credentials by running "aws configure".
```

**2. If network problem between ec2 and s3**

No output, just waits

```sh
[ec2-user@ip-172-31-37-238 ~]$ aws s3 ls

```
