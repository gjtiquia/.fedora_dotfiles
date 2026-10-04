# fedora dotfiles

## setup

```bash
# ensure u are in ur home dir ~
cd

# clone to ~/.fedora_dotfiles
git clone <this-repo>

# create softlinks to files u care about
ln -s <source> <link>

# do check diffs if they exist
diff <file-1> <file-2>

# some files like /etc/systemd/logind.conf.d/override.conf cannot ln -s and should cp
```
