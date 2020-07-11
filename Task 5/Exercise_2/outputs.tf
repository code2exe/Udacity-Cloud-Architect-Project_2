# TODO: Define the output variable for the lambda function.
output "lambda_out" {
  value = "${aws_lambda_function.greet_lambda.id}"
}
