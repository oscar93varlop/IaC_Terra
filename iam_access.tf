# resource "aws_iam_group" "administradores" {
#     name = "administradores"     
# }
# resource "aws_iam_policy_attachment" "admins-attachment" {
#     name = "admins-attachment"
#     groups = [ "${aws_iam_group.administradores.name}"]
#     policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
# }
# resource "aws_iam_user" "tf-user" {
#     name = "tf-user"
# }

# resource "aws_iam_group_membership" "admin-users" {
#     name = "admin-users"
#     users = [
#         "${aws_iam_user.tf-user.name}"
#      ]
#     group = "${aws_iam_group.administradores.name}"
# }

# resource "aws_iam_access_key" "tf-user_ak"{
#     user = "aws_iam_user.tf-user.name"
# }

# output "tf-user_access_key"{
#     value = "${aws_iam_access_key.tf-user_ak.id}"
# }
# output "tf-user_secret_key"{
#     value = "${aws_iam_access_key.tf-user_ak.secet}"
# }