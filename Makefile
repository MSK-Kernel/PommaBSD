# PommaBSD is versioned using the version of the FreeBSD kernel. 

ISO = PommaBSD-14.4-i386-livecd1.iso
VOLUME = PommaBSD
ROOT = iso

.PHONY: all clean

all: $(ISO)

$(ISO): $(ROOT)/boot/cdboot $(ROOT)/boot/loader $(ROOT)/boot/kernel/kernel
	xorriso -as mkisofs -o $(ISO) -V "$(VOLUME)" -R -b boot/cdboot -no-emul-boot -boot-load-size 4 $(ROOT)

clean:
	rm -f $(ISO)

info:
	@echo "Kernel: $(ROOT)/boot/kernel/kernel"
	@ls -lh $(ROOT)/boot/kernel/kernel
	@echo "Loader: $(ROOT)/boot/loader"
	@ls -lh $(ROOT)/boot/loader
	@echo "cdboot: $(ROOT)/boot/cdboot"
	@ls -lh $(ROOT)/boot/cdboot
