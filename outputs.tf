output "sg-ids"{
    count = length(var.sg_name)
    value = aws_security_group.main[count.index].id
}