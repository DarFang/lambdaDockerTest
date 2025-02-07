# Use AWS-provided Lambda Python runtime base image
FROM public.ecr.aws/lambda/python:3.9

# Copy function code and dependencies into the container
COPY app.py ${LAMBDA_TASK_ROOT}
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt --target "${LAMBDA_TASK_ROOT}"

# Set the Lambda function handler
CMD ["app.lambda_handler"]