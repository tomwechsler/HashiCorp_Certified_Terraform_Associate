# Opt-06: (Optional) Terraform graph and Graphviz
This exercise is about visualizing the deployment of resources using 'terraform graph' and Graphviz. 

## Install Graphviz

https://graphviz.org/download/

## Deploy the resources
```
- terraform init 
- terraform fmt 
- terraform validate
- terraform plan -out main.tfplan
- terraform apply "main.tfplan"
```
## Visualize the resources

**To visually see**  

The terraform graph command is used to generate a visual representation of either a configuration or execution plan.
```
- terraform graph
```
The output is in the DOT format, which can be used by GraphViz to generate charts.
```
- terraform graph | dot -Tsvg > graph.svg
```
> Note: Now you can open the graph.svg with the browser, for example.

---
## *GREAT WORK!*
---