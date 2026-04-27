# PROJECT-7: AWS EC2 Instance Provisioning with Terraform

This project demonstrates how to provision an Amazon EC2 instance using Terraform in the AWS cloud.

## Project Overview

The Terraform configuration creates:
- An EC2 instance (t3.micro) in the default VPC
- Uses the default security group
- Configured with a key pair for SSH access
- Root block device with 10GB GP3 storage

## Prerequisites

Before running this project, ensure you have:
- [Terraform](https://www.terraform.io/downloads.html) installed (version 1.0+)
- [AWS CLI](https://aws.amazon.com/cli/) configured with appropriate credentials
- An AWS account with necessary permissions to create EC2 instances

## Configuration

### Provider Configuration
- **Region**: ap-south-1 (Asia Pacific - Mumbai)
- **Provider**: AWS (version 6.42.0)

### EC2 Instance Details
- **AMI**: ami-0e12ffc2dd465f6e4 (Amazon Linux 2)
- **Instance Type**: t3.micro
- **Key Pair**: my-key-pair (ensure this key pair exists in your AWS account or update the configuration)
- **Storage**: 10GB GP3 root volume

## Usage

1. **Clone or navigate to the project directory**

2. **Initialize Terraform**:
   ```bash
   terraform init
   ```

3. **Review the plan**:
   ```bash
   terraform plan
   ```

4. **Apply the configuration**:
   ```bash
   terraform apply
   ```

5. **Confirm** by typing `yes` when prompted.

6. **Destroy resources** (when done):
   ```bash
   terraform destroy
   ```

## Key Pair Setup

The configuration references a key pair named "my-key-pair". You can:
- Create a key pair in AWS EC2 console
- Or update the `key_name` in `ec2.tf` to match your existing key pair
- The project includes SSH key files (`terra-key-ec2` and `terra-key-ec2.pub`) for reference

## Screenshots

(Add screenshots here showing the Terraform plan, apply output, and EC2 instance in AWS console)

## Security Considerations

- The instance uses the default security group, which may allow unrestricted access
- Consider creating custom security groups for production use
- SSH keys are sensitive - never commit private keys to version control
- State files contain sensitive information and are excluded via .gitignore

## Files

- `ec2.tf`: Main Terraform configuration for EC2 instance
- `providers.tf`: AWS provider configuration
- `terraform.tf`: Terraform version requirements
- `.gitignore`: Excludes sensitive files from version control
- `screenshots/`: Directory for project screenshots

## Contributing

Feel free to contribute by submitting pull requests or opening issues.

## License

This project is for educational purposes.