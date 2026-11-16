TAG   ?= v0.1.0
PREV  ?= v0.1.0
INVENTORY ?= inventory.ini
VAULT_PASS ?= .vault-pass

.PHONY: bootstrap check deploy rollback

bootstrap:
	ansible-galaxy install -r requirements.yml

check:
	ansible vm_yc -i $(INVENTORY) -m ping --vault-password-file $(VAULT_PASS)

deploy:
	ansible-playbook playbook.yml -i $(INVENTORY) \
		-e "deploy_app_image_tag=$(TAG)" \
		--vault-password-file $(VAULT_PASS)

rollback:
	ansible-playbook playbook.yml -i $(INVENTORY) \
		-e "deploy_app_image_tag=$(PREV)" \
		--vault-password-file $(VAULT_PASS)
