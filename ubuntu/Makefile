#: help - Display callable targets.
.PHONY: help
help:
	@echo "Reference card for usual actions related to the Vagrant environment."
	@echo "Here are available targets:"
	@egrep -o "^#: (.+)" [Mm]akefile  | sed 's/#: /* /'

#: up - Bring up and log in to the VM for the first or any subsequent time.
up: plugin
	vagrant up
	vagrant ssh
#: provision - Execute the provisioning script on a running VM.
provision:
	vagrant provision

#: ssh - SSH into the VM
ssh:
	vagrant ssh

#: halt - Graceully stop the VM
halt:
	vagrant halt

#: reboot - Gracefully stop and start the VM
reboot: halt up

#: destroy - Kill and remove the VM definition and disk image.
destroy:
	vagrant destroy --force

#: clean - destory, and additionall remove locally cached base image.
clean: destroy
	vagrant box remove ubuntu/xenial64 virtualbox

#: plugin - Install the VirtualBox guest additions plugin
plugin:
	vagrant plugin install vagrant-vbguest
	vagrant plugin install vagrant-disksize

#: update - Check the VM image for an updated version
update:
	vagrant box outdated
	vagrant box update
	vagrant box prune
