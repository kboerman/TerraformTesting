variable "vm_name" {
    description = "Name of the VM"
    type = list(string)
    default = ["NL-Timmie-01", "NL-Timmie-02", "NL-Timmie-03"]
}
variable "location" {
    description = "Region to build into"
    default = "West Europe"
}