TARGET = autoblog 
INSTALL_PATH = /usr/local/bin
.PHONY: install
install: $(TARGET)
	cp $(TARGET) $(INSTALL_PATH)
