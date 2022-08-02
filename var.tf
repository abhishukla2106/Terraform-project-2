# #using map


variable "SET" {
  type = set(string)
  description = "give set value"
}
variable "ins_name" {
  type = list(string)
  description = "give instance name"
}

variable "ami" {
  type = list(string)
  description = "give ami"
}