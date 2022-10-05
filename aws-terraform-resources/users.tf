#Creating users
resource "aws_iam_user" "newusers" {
  count = length(var.username)
  name  = element(var.username, count.index)
}

resource "aws_iam_access_key" "access_key" {
  count = length(var.username)
  user  = element(aws_iam_user.newusers.*.name, count.index)
}

resource "aws_iam_user_policy_attachment" "kOps-user-policy-AmazonRoute53FullAccess" {
  count      = length(var.username)
  user       = element(aws_iam_user.newusers.*.name, count.index)
  policy_arn = aws_iam_policy.kOps_policy_AmazonRoute53FullAccess.arn
}

resource "aws_iam_user_policy_attachment" "kOps-user-policy-AmazonEC2FullAccess" {
  count      = length(var.username)
  user       = element(aws_iam_user.newusers.*.name, count.index)
  policy_arn = aws_iam_policy.kOps_policy_AmazonEC2FullAccess.arn
}

resource "aws_iam_user_policy_attachment" "kOps-user-policy-IAMFullAccess" {
  count      = length(var.username)
  user       = element(aws_iam_user.newusers.*.name, count.index)
  policy_arn = aws_iam_policy.kOps_policy_IAMFullAccess.arn
}

resource "aws_iam_user_policy_attachment" "kOps-user-policy-AmazonSQSFullAccess" {
  count      = length(var.username)
  user       = element(aws_iam_user.newusers.*.name, count.index)
  policy_arn = aws_iam_policy.kOps_policy_AmazonSQSFullAccess.arn
}

resource "aws_iam_user_policy_attachment" "kOps-user-policy-AmazonS3FullAccess" {
  count      = length(var.username)
  user       = element(aws_iam_user.newusers.*.name, count.index)
  policy_arn = aws_iam_policy.kOps_policy_AmazonS3FullAccess.arn
}

resource "aws_iam_user_policy_attachment" "kOps-user-policy-AmazonEventBridgeFullAccess" {
  count      = length(var.username)
  user       = element(aws_iam_user.newusers.*.name, count.index)
  policy_arn = aws_iam_policy.kOps_policy_AmazonEventBridgeFullAccess.arn
}