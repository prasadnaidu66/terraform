variable "Loop" {

   default  =10
}

resource "null_resource" "null" {
  count = var.Loop

  provisioner "local-exec" {
    command = "echo - ${count.index}"
  }
}

