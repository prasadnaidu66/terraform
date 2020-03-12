resource "local_file" "foo" {
  content = "foo"
  filename = "/tmp/abcd"
}


output "FILE_NAME" {
  value = local_file.foo.filename
}


output "FILE_NAME_PERMISION" {
  value = local_file.foo.file_permission
}
