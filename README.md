# TerraformTesting

This is a simple project i did just for fun and experience with Terraform and Azure
It builds 3 resource groups, 1 for Networking, 1 for a Test environment and an identical one for Production environment.
It builds 2 VNETs and 2 Subnets and puts the resources in the correct ones.
It creates 1 Windows Server and 2 Windoews 11 Desktops in Prod and Test environments, identical to each other
It also names the VMs and names the NIC and OSdisk with the same identifier so its easy to see which resource is paired with what machine
