set -e
sed -z -i 's/\(#HostKey[^\n]*\n\)\+/HostKeyAlgorithms ssh-ed25519\n/g' /etc/ssh/sshd_config
