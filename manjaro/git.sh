# Generate SSH Key for github
ssh-keygen

# Config user and email
git config --global user.name "schweigert"
git config --global user.email "marlon.henry@magrathealabs.com"

# Generate GPG Key for github
gpg --full-generate-key # Select RSA and RSA
gpg --list-secret-keys --keyid-format LONG
# -> gpg: marginals needed: 3  completes needed: 1  trust model: pgp
# -> gpg: depth: 0  valid:   1  signed:   0  trust: 0-, 0q, 0n, 0m, 0f, 1u
# -> /home/marlon/.gnupg/pubring.kbx
# -> -------------------------------
# -> sec   rsa4096/XXXXXXXXXXXXXXXXX 2019-02-14 [SC]
# ->       YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
# -> uid                 [ultimate] Marlon Henry Schweigert (Github GPG key) <marlon.henry@magrathealabs.com>
# -> ssb   rsa4096/XXXXXXXXXXXXXXXXX 2019-02-14 [E]

git config --global user.signingkey XXX...XXX
gpg --armor --export XXX...XXX

# Store GPG on bash profile
test -r ~/.bash_profile && echo 'export GPG_TTY=$(tty)' >> ~/.profile
echo 'export GPG_TTY=$(tty)' >> ~/.profile

# Use git commit -S -m "Label now"
# Dont forget -S

pacaur -S git-extras
