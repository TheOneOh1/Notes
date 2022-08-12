PARTITION

fdisk -l 						--- check available partition table

fdisk /dev/sda

	p ---- print partition table
	n ---- new part
	w ---- write / save


partprobe		---- to apply changes use any of the 3
partx -a */dev/sda
reboot


FORMATING

mkfs.xfs /dev/sda4			---- xfs is a file system

MOUNTING

Temp Mounting : 
mount /dev/sda /mnt

To unmount :
umount /mnt

To check
 
df -h






Delete Partition

Remove the entry from /etc/fstab

Mount -a

2.fdisk /dev/sda
	> p
	> d {to delete}
	Select the number to delete
	> w {to save the changes}









EXTENDED PARTITION

	fdisk /dev/sda
		>p
		>n
		> e {for extended partition}
		give size and stuff
		
	Partprobe				--- to apply partition
	mkfs.xfs /dev/sda5 			--- to format 
	Mount -a				--- to mount


Making a Partition into SWAP

free -mh 				---- to check memory size of RAM

fdisk /dev/sda

	>n
	>t				--- change the partition type
	> select the part number
	>enter hex code = 82
	>w

partprobe			---- to apply the partitions
mkswap /dev/sda5			----making partition as SWAP

vim /etc/sda5			---- get into vim to add the new partition as a swap part

swapon -a			---- to mount the SWAP
