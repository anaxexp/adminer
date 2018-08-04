-include env_make

ADMINER_VER ?= 4.6.3
ADMINER_MINOR_VER ?= $(shell echo "${ADMINER_VER}" | grep -oE '^[0-9]+\.[0-9]+')

ADMINER_LANG ?= en

TAG ?= $(ADMINER_MINOR_VER)

PHP_VER ?= 7.1
BASE_IMAGE_TAG = $(PHP_VER)

REPO = anaxexp/adminer
NAME = adminer-$(ADMINER_MINOR_VER)

ifneq ($(STABILITY_TAG),)
    ifneq ($(TAG),latest)
        override TAG := $(TAG)-$(STABILITY_TAG)
    endif
endif

.PHONY: build test push shell run start stop logs clean release

default: build

build:
	docker build -t $(REPO):$(TAG) \
		--build-arg BASE_IMAGE_TAG=$(BASE_IMAGE_TAG) \
		--build-arg ADMINER_VER=$(ADMINER_VER) \
		--build-arg ADMINER_LANG=$(ADMINER_LANG) \
	./

test:
	IMAGE=$(REPO):$(TAG) NAME=$(NAME) ./test.sh

push:
	docker push $(REPO):$(TAG)

shell:
	docker run --rm --name $(NAME) -i -t $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG) /bin/bash

run:
	docker run --rm --name $(NAME) $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG) $(CMD)

start:
	docker run -d --name $(NAME) $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG)

stop:
	docker stop $(NAME)

logs:
	docker logs $(NAME)

clean:
	-docker rm -f $(NAME)

release: build push
