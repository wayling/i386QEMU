QEMU_IMAGE = qemu-system-i386
CC = gcc
LD = ld

CFLAGS = -g -ggdb -Wall -m64 -D_FORTIFY_SOURCE=2 -D_GNU_SOURCE \
  -D_FORTIFY_SOURCE=2 -D_GNU_SOURCE -DTARGET_PHYS_ADDR_BITS=64 -D_FILE_OFFSET_BITS=64 \
  -D_LARGEFILE_SOURCE -DHAS_AUDIO -DHAS_AUDIO_CHOICE -DNEED_CPU_H -D_GNU_SOURCE=1 -D_REENTRANT \
  -Wstrict-prototypes -Wredundant-decls -Wall -Wundef -Wwrite-strings -Wmissing-prototypes \
  -fno-strict-aliasing -fstack-protector-all -Wendif-labels -Wmissing-include-dirs \
  -Wempty-body -Wnested-externs -Wformat-security \
  -Wformat-y2k -Winit-self -Wignored-qualifiers -Wold-style-declaration \
  -Wold-style-definition -Wtype-limits -Wstrict-prototypes -Wredundant-decls \
  -Wall -Wundef -Wwrite-strings -Wmissing-prototypes -fno-strict-aliasing  \
  -fstack-protector-all -Wendif-labels -Wmissing-include-dirs -Wempty-body -Wnested-externs \
  -Wformat-security -Wformat-y2k -Winit-self -Wignored-qualifiers -Wold-style-declaration \
  -Wold-style-definition -Wtype-limits

CFLAGS		+= -pthread 

XLDFLAGS = -lrt -pthread -pthread -lgthread-2.0 -lrt -lglib-2.0    -lutil -lncurses  -lpng12   \
			-lSDL   -lX11   -lm -lz

INCDIRS		+=  -I. -Islirp -Ifpu -Iaudio -Iblock -Ihw -Ifsdev \
				-Ihw/9pfs -Ihw/ide -Itrace -Inet -Iqapi -Iui \
				-Itarget-i386 -Ii386-softmmu -Itcg -Itcg/i386 

INCDIRS		+=  -I/usr/include/libpng12 -I/usr/include/glib-2.0 \
  -I/usr/lib/x86_64-linux-gnu/glib-2.0/include \
  -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include \
  -Ilinux-headers -I/usr/include/SDL

LDFLAGS    +=   -m64 -D_FORTIFY_SOURCE=2 -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 \
 -D_LARGEFILE_SOURCE -Wstrict-prototypes -Wredundant-decls -Wall -Wundef \
 -Wwrite-strings -Wmissing-prototypes -fno-strict-aliasing  -fstack-protector-all \
 -Wendif-labels -Wmissing-include-dirs -Wempty-body -Wnested-externs -Wformat-security \
 -Wformat-y2k -Winit-self -Wignored-qualifiers -Wold-style-declaration \
 -Wold-style-definition -Wtype-limits -I/usr/include/libpng12   -DHAS_AUDIO \
 -DHAS_AUDIO_CHOICE  -DTARGET_PHYS_ADDR_BITS=64 -I../linux-headers -I.. \
 -I/home/pypyman/qemu/qemu-1.0.1/target-i386 -DNEED_CPU_H -pthread -I/usr/include/glib-2.0 \
 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/libpng12 \
 -pthread -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include \
 -g -Wl,--warn-common -m64 -g

TEST_FILE	= linux-0.2.img

KERNEL_SRC = acl.c  \
aes.c  \
aio.c  \
async.c  \
audio/audio.c  \
audio/mixeng.c  \
audio/noaudio.c  \
audio/ossaudio.c  \
audio/sdlaudio.c  \
audio/wavaudio.c  \
audio/wavcapture.c  \
bitmap.c  \
bitops.c  \
block-migration.c  \
block.c  \
block/blkdebug.c  \
block/blkverify.c  \
block/bochs.c  \
block/cloop.c  \
block/cow.c  \
block/dmg.c  \
block/nbd.c  \
block/parallels.c  \
block/qcow.c  \
block/qcow2-cache.c  \
block/qcow2-cluster.c  \
block/qcow2-refcount.c  \
block/qcow2-snapshot.c  \
block/qcow2.c  \
block/qed-check.c  \
block/qed-cluster.c  \
block/qed-gencb.c  \
block/qed-l2-cache.c  \
block/qed-table.c  \
block/qed.c  \
block/raw-posix.c  \
block/raw.c  \
block/sheepdog.c  \
block/vdi.c  \
block/vmdk.c  \
block/vpc.c  \
block/vvfat.c  \
blockdev.c  \
hw/bt-hci-csr.c  \
hw/bt-hci.c  \
hw/bt-hid.c  \
bt-host.c  \
hw/bt-l2cap.c  \
hw/bt-sdp.c  \
bt-vhci.c  \
hw/bt.c  \
buffered_file.c  \
cache-utils.c  \
hw/cdrom.c  \
compatfd.c  \
console.c  \
coroutine-ucontext.c  \
cursor.c  \
cutils.c  \
hw/eeprom93xx.c  \
error.c  \
event_notifier.c  \
fsdev/qemu-fsdev.c  \
hw/hid.c  \
hmp.c  \
host-utils.c  \
hw/i2c.c  \
input.c  \
iohandler.c  \
iov.c  \
hw/irq.c  \
json-lexer.c  \
json-parser.c  \
json-streamer.c  \
i386-dis.c  \
hw/9pfs/codir.c  \
hw/9pfs/cofile.c  \
hw/9pfs/cofs.c  \
hw/9pfs/coxattr.c  \
hw/9pfs/virtio-9p-coth.c  \
hw/9pfs/virtio-9p-local.c  \
hw/9pfs/virtio-9p-posix-acl.c  \
hw/9pfs/virtio-9p-synth.c  \
hw/9pfs/virtio-9p-xattr-user.c  \
hw/9pfs/virtio-9p-xattr.c  \
hw/9pfs/virtio-9p.c  \
hw/ac97.c  \
hw/acpi.c  \
hw/acpi_piix4.c  \
hw/apm.c  \
hw/applesmc.c  \
dma-helpers.c  \
hw/dma.c  \
hw/e1000.c  \
hw/eepro100.c  \
hw/es1370.c  \
hw/fdc.c  \
hw/fw_cfg.c  \
hw/hda-audio.c  \
hw/hpet.c  \
hw/i8254.c  \
hw/i8259.c  \
hw/ide/ahci.c  \
hw/ide/atapi.c  \
hw/ide/core.c  \
hw/ide/ich.c  \
hw/ide/isa.c  \
hw/ide/pci.c  \
hw/ide/piix.c  \
hw/ide/qdev.c  \
hw/intel-hda.c  \
hw/ioh3420.c  \
hw/isa-bus.c  \
hw/loader.c  \
hw/lsi53c895a.c  \
hw/msi.c  \
hw/msix.c  \
hw/ne2000-isa.c  \
hw/ne2000.c  \
hw/parallel.c  \
hw/pci.c  \
hw/pci_bridge.c  \
hw/pci_host.c  \
hw/pcie.c  \
hw/pcie_aer.c  \
hw/pcie_host.c  \
hw/pcie_port.c  \
hw/pckbd.c  \
hw/pcnet-pci.c  \
hw/pcnet.c  \
hw/pcspk.c  \
hw/pm_smbus.c  \
hw/qdev-addr.c  \
hw/rtl8139.c  \
hw/sb16.c  \
hw/serial.c  \
hw/sysbus.c  \
hw/usb-ehci.c  \
hw/usb-libhw.c  \
hw/usb-ohci.c  \
hw/usb-uhci.c  \
hw/vga-isa.c  \
hw/vga-pci.c  \
hw/virtio-console.c  \
hw/virtio-pci.c  \
vl.c  \
hw/vmmouse.c  \
hw/vmware_vga.c  \
hw/watchdog.c  \
hw/wdt_i6300esb.c  \
hw/xio3130_downstream.c  \
hw/xio3130_upstream.c  \
main-loop.c  \
migration-exec.c  \
migration-fd.c  \
migration-tcp.c  \
migration-unix.c  \
migration.c  \
module.c  \
hw/msmouse.c  \
nbd.c  \
net.c  \
net/checksum.c  \
net/dump.c  \
net/queue.c  \
net/slirp.c  \
net/socket.c  \
net/tap-linux.c  \
net/tap.c  \
net/util.c  \
notify.c  \
os-posix.c  \
osdep.c  \
oslib-posix.c  \
pflib.c  \
posix-aio-compat.c  \
hw/ps2.c  \
qapi-types.c  \
qapi-visit.c  \
qapi/qapi-dealloc-visitor.c  \
qapi/qapi-visit-core.c  \
qapi/qmp-dispatch.c  \
qapi/qmp-input-visitor.c  \
qapi/qmp-output-visitor.c  \
qapi/qmp-registry.c  \
qbool.c  \
hw/qdev-properties.c  \
hw/qdev.c  \
qdict.c  \
qemu-char.c  \
qemu-config.c  \
qemu-coroutine-lock.c  \
qemu-coroutine.c  \
qemu-error.c  \
qemu-option.c  \
qemu-progress.c  \
qemu-sockets.c  \
qemu-thread-posix.c  \
qemu-timer-common.c  \
qemu-timer.c  \
qerror.c  \
qfloat.c  \
qint.c  \
qjson.c  \
qlist.c  \
qmp-marshal.c  \
qmp.c  \
qstring.c  \
readline.c  \
savevm.c  \
hw/scsi-bus.c  \
hw/scsi-disk.c  \
hw/scsi-generic.c  \
slirp/arp_table.c  \
slirp/bootp.c  \
slirp/cksum.c  \
slirp/if.c  \
slirp/ip_icmp.c  \
slirp/ip_input.c  \
slirp/ip_output.c  \
slirp/mbuf.c  \
slirp/misc.c  \
slirp/sbuf.c  \
slirp/slirp.c  \
slirp/socket.c  \
slirp/tcp_input.c  \
slirp/tcp_output.c  \
slirp/tcp_subr.c  \
slirp/tcp_timer.c  \
slirp/tftp.c  \
slirp/udp.c  \
hw/smbus.c  \
hw/smbus_eeprom.c  \
tcg-runtime.c  \
trace.c  \
trace/control.c  \
trace/default.c  \
ui/curses.c  \
ui/d3des.c  \
ui/keymaps.c  \
ui/sdl.c  \
ui/sdl_zoom.c  \
ui/vnc-enc-hextile.c  \
ui/vnc-enc-tight.c  \
ui/vnc-enc-zlib.c  \
ui/vnc-enc-zrle.c  \
ui/vnc-jobs-sync.c  \
ui/vnc-palette.c  \
ui/vnc.c  \
ui/x_keymap.c  \
hw/usb-bt.c  \
hw/usb-bus.c  \
hw/usb-desc.c  \
hw/usb-hid.c  \
hw/usb-hub.c  \
usb-linux.c  \
hw/usb-msd.c  \
hw/usb-net.c  \
hw/usb-serial.c  \
hw/usb-wacom.c  \
hw/usb.c  \
hw/9pfs/virtio-9p-device.c  \
hw/apic.c  \
arch_init.c  \
balloon.c  \
hw/cirrus_vga.c  \
cpu-exec.c  \
target-i386/cpuid.c  \
cpus.c  \
hw/debugcon.c  \
hw/device-hotplug.c  \
disas.c  \
exec.c  \
fpu/softfloat.c  \
gdbstub.c  \
target-i386/helper.c  \
hw/ioapic.c  \
ioport.c  \
kvm-stub.c  \
target-i386/machine.c  \
hw/mc146818rtc.c  \
memory.c  \
monitor.c  \
hw/multiboot.c  \
target-i386/op_helper.c  \
hw/pc.c  \
hw/pc_piix.c  \
hw/pci-hotplug.c  \
hw/piix_pci.c  \
hw/sga.c  \
hw/smbios.c  \
tcg/optimize.c  \
tcg/tcg.c  \
translate-all.c  \
target-i386/translate.c  \
hw/vga.c  \
hw/vhost_net.c  \
hw/virtio-balloon.c  \
hw/virtio-blk.c  \
hw/virtio-net.c  \
hw/virtio-serial-bus.c  \
hw/virtio.c  \
hw/vmport.c  \
hw/wdt_ib700.c  \
xen-stub.c

.PHONY: all test $(QEMU_IMAGE) $(KERNEL_OBJ) clean
	
KERNEL_OBJ = $(KERNEL_SRC:.c=.o)

all: $(QEMU_IMAGE)

test:
	i386-softmmu/$(QEMU_IMAGE) test/$(TEST_FILE)

$(QEMU_IMAGE):$(KERNEL_OBJ)
	@echo [LD] $@
	@$(CC) $(LDFLAGS) \
		-o $(QEMU_IMAGE) \
		$(KERNEL_OBJ) $(XLDFLAGS)
	mv $(QEMU_IMAGE) i386-softmmu

$(KERNEL_OBJ): %.o : %.c
	@echo [CC] $<
	@$(CC) -c $(CFLAGS) $(INCDIRS) -c $< -o $@


clean :
	rm -f *.o && rm -f audio/*.o && rm -f block/*.o \
	&& rm -f *fpu/*.o && rm -f fsdev/*o && rm -f hw/*.o \
	&& rm -f i386-softmmu/*.o && rm -f linux-headers/*.o \
	&& rm -f net/*.o && rm -f pc-bios/*.o && rm -f qapi/*.o \
	&& rm -f slirp/*.o && rm -f target-i386/*.o && rm -f tcg/*.o\
	&& rm -f trace/*.o && rm -f ui/*.o && rm -f trace/*.o
	rm -f i386-softmmu/$(QEMU_IMAGE)
