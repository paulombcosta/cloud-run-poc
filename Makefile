assemble:
	docker build -t gcr.io/coloud-run-poc/helloworld .
run:
	docker run -it --rm io.paulocosta.gcloud-poc:latest
push:
	gcloud builds submit --tag gcr.io/coloud-run-poc/helloworld
run-cloud:
	gcloud beta run deploy --image gcr.io/coloud-run-poc/helloworld
