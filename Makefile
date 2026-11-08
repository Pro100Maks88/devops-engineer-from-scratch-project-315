TAG ?= v0.1.0
PREV ?= v0.1.0

.PHONY: deploy rollback check

check:
	ansible vm_yc -i inventory.ini -m ping --vault-password-file .vault-pass

deploy:
	ansible-playbook playbook.yml -i inventory.ini \
		-e "app_image_tag=$(TAG)" \
		--vault-password-file .vault-pass

rollback:
	ansible-playbook playbook.yml -i inventory.ini \
		-e "app_image_tag=$(PREV)" \
		--vault-password-file .vault-pass
