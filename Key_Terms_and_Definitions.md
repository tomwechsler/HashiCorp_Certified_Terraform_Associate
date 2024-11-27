# HashiCorp Certified Terraform Associate - Key Terms and Definitions

## 1. Terraform
Terraform is an Infrastructure-as-Code (IaC) tool used to create, manage, and version infrastructure resources.

## 2. Provider
A provider is a Terraform plugin that facilitates communication with APIs to manage resources (e.g., AWS, Azure, Google Cloud).

## 3. Resource
A resource is a declared infrastructure component in Terraform, such as a virtual machine, network, or database.

## 4. Variable
Variables allow parameterization of Terraform configurations to create reusable and flexible code.

## 5. Output
Outputs are declared values returned after running a plan or apply, often useful for other modules or users.

## 6. State File
The state file (`terraform.tfstate`) keeps track of the current status of infrastructure to synchronize Terraform with real-world resources.

## 7. Backend
A backend defines where and how the Terraform state is stored and retrieved (e.g., locally, in a remote database, or in cloud storage).

## 8. Module
A module is a collection of Terraform configuration files grouped together to perform a specific task or define reusable infrastructure components.

## 9. Data Source
Data sources allow Terraform to fetch information from existing resources or APIs without creating or modifying them.

## 10. Plan
`terraform plan` previews changes Terraform will make to the infrastructure without actually applying them.

## 11. Apply
`terraform apply` executes the proposed changes from the plan and updates the infrastructure.

## 12. Destroy
`terraform destroy` removes all resources defined in the Terraform configuration.

## 13. HCL (HashiCorp Configuration Language)
HCL is the declarative language used to write Terraform configuration files, designed to be human-readable and simple.

## 14. Dependency Graph
A dependency graph shows how resources are connected and determines the order in which they are created or updated.

## 15. Workspace
Workspaces allow managing multiple instances of a Terraform configuration, such as `development`, `staging`, and `production`.

## 16. Provisioner
Provisioners execute specific actions on resources after they are created, such as running scripts or copying files.

## 17. Remote State
Remote state stores the Terraform state file on an external platform (e.g., AWS S3 or Terraform Cloud) for collaboration and consistency.

## 18. Terraform Registry
The Terraform Registry is a centralized repository where modules and providers can be shared and discovered.

## 19. Locking
Locking prevents multiple users from making simultaneous changes to the same Terraform environment, avoiding conflicts.

## 20. Drift
Drift refers to differences between Terraform’s state file and the actual state of infrastructure.

## 21. Lifecycle
Lifecycle rules control resource behavior, such as ignoring changes (`ignore_changes`) or forcing recreation (`create_before_destroy`).

## 22. Sensitive
The `sensitive = true` attribute marks variables or outputs as sensitive, ensuring they are not displayed in logs.

## 23. Immutable Infrastructure
Terraform promotes the concept of immutable infrastructure, where resources are replaced rather than directly modified.

## 24. Import
`terraform import` integrates existing resources into Terraform’s state file so they can be managed using Terraform.

## 25. Init
`terraform init` initializes a Terraform configuration by loading necessary providers and setting up the backend.

## 26. Output Variables
Output variables export information from a Terraform module to be used by other modules or tools.

## 27. Count
The `count` meta-argument is used to create multiple instances of a resource or module.

## 28. For_each
`for_each` allows the dynamic creation of resources based on a list or map, offering more flexibility than `count`.

## 29. Dynamic Block
A dynamic block enables the creation of repeating sub-blocks (e.g., tags or rules) within a resource definition dynamically.

## 30. Terraform Cloud
Terraform Cloud is a SaaS offering by HashiCorp that provides remote backends, collaboration, CI/CD, and state locking for Terraform projects.