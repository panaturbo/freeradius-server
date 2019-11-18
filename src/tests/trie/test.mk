#
#  Get the test files.
#
TRIE_FILES := $(subst $(DIR)/,,$(wildcard $(DIR)/*.txt))

#
#  Create the output directory
#
.PHONY: $(BUILD_DIR)/tests/trie
$(BUILD_DIR)/tests/trie:
	${Q}mkdir -p $@

$(BUILD_DIR)/tests/trie/trie-%: $(DIR)/% $(TESTBINDIR)/trie | $(BUILD_DIR)/tests/trie
	@echo "TRIE-TEST $(notdir $@)"
	@$(TESTBIN)/trie $^ > $@

$(BUILD_DIR)/tests/trie/nopc-%: $(DIR)/% $(TESTBINDIR)/nopc | $(BUILD_DIR)/tests/trie
	@echo "TRIE-NO-PC-TEST $(notdir $@)"
	@$(TESTBIN)/nopc $^ > $@

#
#  Get all of the unit test output files
#
TEST.TRIE_FILES := $(addprefix $(BUILD_DIR)/tests/trie/trie-,$(TRIE_FILES))
#TEST.TRIE_FILES += $(addprefix $(BUILD_DIR)/tests/trie/nopc-,$(TRIE_FILES))

#
#  Depend on the output files, and create the directory first.
#
test.trie: $(TEST.TRIE_FILES)

$(TEST.TRIE_FILES): $(TEST.UNIT_FILES)

.PHONY: clean.test.trie
clean.test.trie:
	${Q}rm -rf $(BUILD_DIR)/tests/trie/

clean.test: clean.test.trie
