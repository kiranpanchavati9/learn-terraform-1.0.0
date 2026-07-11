variable "dummy_ports" {
    default = {
        port1 = 9090
        port2 = 9091
        port3 = 9092
        port4 = 9093
        port5 = 9094
        port6 = 9095
    }
}


locals {
    value = { for x,y in var.dummy_ports : "${x}" => y }
}

output "mmap" {
    value = local.value
}