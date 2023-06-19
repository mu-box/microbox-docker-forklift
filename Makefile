
.PHONY: all forklift

all: forklift

forklift:
	docker build \
		-t mubox/forklift \
		.

	docker push mubox/forklift

