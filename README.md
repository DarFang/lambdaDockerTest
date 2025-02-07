# lambdaDockerTest
 
build:
```docker build -t my-lambda-image .```
test lambda function:
```docker run -p 9000:8080 my-lambda-image```
on git bash:
```curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'```
expected response:
```{"statusCode":200,"body":"{\"message\": \"Hello from Lambda in Docker!\"}"}```
