# TerraformTesting
See Draw.io Diagram named Schema for the visual aid<br>
<br>
This is a simple project i did just for fun and experience with Terraform and Azure<br>
It builds 3 resource groups, 1 for Networking, 1 for a Test environment and an identical one for Production environment.<br>
It builds 2 VNETs and 2 Subnets and puts the resources in the correct ones. <br>
Prod Vnet = 10.0.0.0\16<br>
Prod subnet = 10.0.2.0 \24<br>
Test Vnet = 192.168.0.0\16<br>
Test subnet = 192.168.1.0\24<br>
It creates 1 Windows Server and 2 Windows 11 Desktops in Prod and Test environments, identical to each other<br>
It also names the VMs and names the NIC and OSdisk with the same identifier so its easy to see which resource is paired with what machine<br>
<br>
This is an ongoing project as i am trying to gain experience and trying new stuff all the time
