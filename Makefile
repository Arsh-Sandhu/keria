.PHONY: build-keria
build-keria:
	@docker build --no-cache -f images/keria.dockerfile --tag weboftrust/keria:0.0.1 .

publish-keria:
	@docker push weboftrust/keria:0.0.1

.PHONY: run-keria
run-keria:
    @docker run -it --name keria-agent -p 3901:3901 -p 3902:3902 -p 3903:3903 weboftrust/keria:0.0.1
	# docker compose -f docker-compose.dev.yml up

.PHONY: rm-keria    
rm-keria:
    docker compose -f docker-compose.dev.yml down