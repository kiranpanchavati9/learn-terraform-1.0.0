variable "ports" {
    default = {
        ssh = 22
        http = 80
        https = 443
        splunk-management = 8089
        splunk-data = 9997
        splunk-web = 8000
    }
}


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

output "list" {
    value = [ for x,y in var.ports : y ]
}

output "mmap" {
    value = { for x,y in var.dummy_ports : "${x}" => y }
}
