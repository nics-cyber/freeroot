cd ; touch start_ubuntu.sh ; echo "cd .vm/ubuntu ; qemu-system-x86_64 \
    -m 3G \
    -nographic \
    -device virtio-net-pci,netdev=net0 \
    -netdev user,id=net0,hostfwd=tcp::2222-:22 \
    -drive "if=virtio,format=qcow2,file=ubuntu-22.04-server-cloudimg-amd64.img" \
    -drive "if=virtio,format=raw,file=seed.img" \
    -virtfs local,path=/sec,mount_tag=host0,security_model=passthrough" >> start_ubuntu.sh ; chmod +x start_ubuntu.sh
