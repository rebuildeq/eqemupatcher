EXPANSION := 0

MAKE_S := $(MAKE) --no-print-directory

prep-expansion:
	make expansion-$(EXPANSION)

.PHONY: cp-file-%
cp-file-%:
	@echo "Copying $*"
	@cd versions/$* && ./$*.sh
	
expansion-0:
	@echo "Initializing..."
	mkdir -p server
	mkdir -p rof/maps/
	rm -rf server/*
	rm -f rof/maps/*
	rm -f rof/delete.txt
	@echo "Copying classic files..."
	@${MAKE_S} cp-file-arena_v0
	@${MAKE_S} cp-file-ecommons_v0
	@${MAKE_S} cp-file-commons_v0
	@${MAKE_S} cp-file-highpass_v0
	@${MAKE_S} cp-file-lavastorm_v0
	@${MAKE_S} cp-file-nektulos_v0
	@${MAKE_S} cp-file-bazaar_v0
	@${MAKE_S} cp-file-misty_v0
	@${MAKE_S} cp-file-tox_v0
	@${MAKE_S} cp-file-guildlobby_v0
	@echo "lavastorm.eqg" > rof/delete.txt
	@echo "nektulos.eqg" >> rof/delete.txt
	@echo "bazaar.eqg" >> rof/delete.txt
	@echo "nektulos_EnvironmentEmitters.txt" >> rof/delete.txt

expansion-1: expansion-0
expansion-2: expansion-0
expansion-3: expansion-0
	@echo "Applying Luclin..."
	@${MAKE_S} cp-file-barter_v0
	
expansion-4: expansion-3
expansion-5: expansion-3
expansion-6: expansion-3
expansion-7: expansion-3
expansion-8: expansion-3
expansion-9: expansion-3
	@echo "Applying DoN..."
	@${MAKE_S} cp-file-guildhall_v0
	@${MAKE_S} cp-file-guildlobby_v1
	@${MAKE_S} cp-file-lavastorm_v1
	@${MAKE_S} cp-file-bazaar_v1
	@echo "" > rof/delete.txt
	
expansion-10: expansion-9
expansion-11: expansion-9
	@echo "Applying DoDH..."
	@${MAKE_S} cp-file-nektulos_v1

expansion-12: expansion-11
expansion-13: expansion-11
expansion-14: expansion-11
expansion-15: expansion-11
expansion-16: expansion-11
expansion-17: expansion-11
	@echo "Applying HoT..."
	@${MAKE_S} cp-file-guildlobby_v2
	
expansion-18: expansion-17
expansion-19: expansion-17
	@echo "RoF TODO"
	