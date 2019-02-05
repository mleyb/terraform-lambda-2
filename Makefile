zip-func:
	zip func.zip ./src/func.js

invoke-func:
	aws lambda invoke --region=eu-west-1 --function-name=func output.txt
