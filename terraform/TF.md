# Docker Best Practices
### 1. Always set up a shared state location
### 2. Use separate state locations based on logical environment boundaries
### 3. Decompose and abstract your terraform code to maximize reuse
### 4. Be wary of programmatically generating resource names
### 5. Keep your modules and your environment implementation code separate
### 6. Maintain a strict policy of reviewing terraform validate and plan outputs before allowing terraform changes to be applied to an environment
### 7. Use an automated testing framework to write unit and functional tests that validate your terraform modules
### 8. Require a uniform authentication scheme and auditing mechanism that clearly tracks which principal triggered a terraform operation, particularly in production environments
### 9. Use a Continuous Delivery / Continuous Integration or shared orchestration tool to execute your terraform operations from a single common location
### 10. Consider using a separate abstraction layer to facilitate reuse and abstraction

#### Sources I used :
[Top Ten Best Practices for Terraform Implementations](https://www.xtivia.com/blog/cloud/terraform-best-practices/)