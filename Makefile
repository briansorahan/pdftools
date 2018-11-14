IMG=bsorahan/pdftools

image: .image

.image: Dockerfile
	@docker build -t $(IMG) .
	@touch $@

clean:
	@rm -rf .image

push:
	@docker push $(IMG)

.PHONY: clean image
