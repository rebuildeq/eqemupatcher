EXPANSION := 0

MAKE_S := $(MAKE) --no-print-directory

prep-expansion:
	make expansion-$(EXPANSION)

.PHONY: cp-file-%
cp-file-%:
	@echo "Copying $*"
	@cd versions/$* && ./$*.sh

test:
	cd versions/arena_v0 && ${MAKE_S}

expansion-0:
	@echo "Initializing..."
	mkdir -p server
	mkdir -p rof/maps/
	rm -rf server/*
	rm -f rof/maps/*
	rm -f rof/delete.txt
	@echo "Copying classic files..."
	cd versions/arena_v0 && ${MAKE_S}
	cd versions/ecommons_v0 && ${MAKE_S}
	cd versions/commons_v0 && ${MAKE_S}
	cd versions/highpass_v0 && ${MAKE_S}
	cd versions/lavastorm_v0 && ${MAKE_S}
	cd versions/nektulos_v0 && ${MAKE_S}
	cd versions/bazaar_v0 && ${MAKE_S}
	cd versions/misty_v0 && ${MAKE_S}
	cd versions/tox_v0 && ${MAKE_S}
	cd versions/guildlobby_v0 && ${MAKE_S}
	@echo "lavastorm.eqg" > rof/delete.txt
	@echo "nektulos.eqg" >> rof/delete.txt
	@echo "bazaar.eqg" >> rof/delete.txt
	@echo "nektulos_EnvironmentEmitters.txt" >> rof/delete.txt

expansion-1: expansion-0
expansion-2: expansion-0
expansion-3: expansion-0
	@echo "Applying Luclin..."
	cd versions/barter_v0 && ${MAKE_S}
	
expansion-4: expansion-3
expansion-5: expansion-3
expansion-6: expansion-3
expansion-7: expansion-3
expansion-8: expansion-3
expansion-9: expansion-3
	@echo "Applying DoN..."
	cd versions/guildhall_v0 && ${MAKE_S}
	cd versions/guildlobby_v1 && ${MAKE_S}
	cd versions/lavastorm_v1 && ${MAKE_S}
	cd versions/bazaar_v1 && ${MAKE_S}
	@echo "" > rof/delete.txt
	
expansion-10: expansion-9
expansion-11: expansion-9
	@echo "Applying DoDH..."
	cd versions/nektulos_v1 && ${MAKE_S}

expansion-12: expansion-11
expansion-13: expansion-11
expansion-14: expansion-11
expansion-15: expansion-11
expansion-16: expansion-11
expansion-17: expansion-11
	@echo "Applying HoT..."
	cd versions/guildlobby_v2 && ${MAKE_S}
	
expansion-18: expansion-17
expansion-19: expansion-17
	@echo "RoF TODO"
	