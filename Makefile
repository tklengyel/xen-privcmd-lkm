xen-privcmd-y := privcmd.o privcmd-buf.o
obj-m += xen-privcmd.o

all:
	EXTRA_CFLAGS="-g -DDEBUG" make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
