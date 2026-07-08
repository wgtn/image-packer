#
# Windows Server 2022 — non-secret build values (safe to commit).
# Loaded automatically by Packer because of the *.auto.pkrvars.hcl suffix.
#
# Secrets (winrm_password, vsphere_*) belong in secrets.local.pkrvars.hcl
# (gitignored) or in PKR_VAR_* environment variables.
#

# Point this at your local ISO or a download URL.
# Example local path (Windows): "file:///C:/ISOs/SERVER_EVAL_x64FRE_en-us.iso"
iso_url = "file:///C:/LabMedia/isos/Windows/Server/2022/WindowsServer2022/ISO/WS2022-Updated-windows-server-2022-datacenter-desktop-20260705.iso"
iso_checksum= "sha256:54862DF9FEA9EC493851805DD0FCB8047BD7F192061F1367049EFFC60C1539DE"
windows_image_name = "Windows Server 2022 Datacenter (Desktop Experience)"
windows_image_index = "1"

# VM sizing
cpus      = 4
memory    = 8192
disk_size = 61440

# Show the VirtualBox console while developing the Autounattend.xml; set true for CI.
headless = false

# EFI-first baseline for consistency across Windows and Linux image builds.
vbox_firmware = "efi"
