variable "container_image" {
  type = string
  default = "nginx:latest"
  description = "This is the container image to launch NGINX from"
}

resource "docker_container" "nginx" {
    name = each.value.name
    image = each.value.image
    for_each = {
      cont01 = {
        name = "nginx1201"
        image = "linuxserver/nginx:1.20.1"
      }
      cont02 = {
        name = "nginx1202"
        image = "linuxserver/nginx:1.20.2"
      }
      cont03 = {
        name = "nginx1180"
        image = "linuxserver/nginx:version-1.18.0-r15"
      }
    }
}