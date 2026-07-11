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
