all:
	./setup.sh
	vagrant up

clean:
	vagrant destroy -f
	rm -rf .vagrant
