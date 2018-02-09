TARGET	= forcefully_remove_bootfb
OBJS	= $(TARGET).o
KDIR	= /lib/modules/$(KERNELRELEASE)/build

PWD = $(shell pwd)

obj-m      := $(TARGET).o

default:
	make -C $(KDIR) SUBDIRS=$(PWD) modules

$(TARGET).o: $(OBJS)
	$(LD) $(LD_RFLAG) -r -o $@ $(OBJS)

clean:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) clean

.PHONY: modules clean

-include $(KDIR)/Rules.make
