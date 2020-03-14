variable "Loop" {

   default  =10
}

resource "null_resource" "null" {
  count = var.Loop

  provisioner "remote-exec" {
    command = "echo"
  }
}

