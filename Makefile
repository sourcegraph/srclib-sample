.PHONY: docker-image release

docker-image:
	docker build -t srclib/srclib-sample .

release: docker-image
	docker push srclib/srclib-sample
