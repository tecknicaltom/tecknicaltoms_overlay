Save the following to `/etc/portage/repos.conf/tecknicaltom.conf`:

```
[tecknicaltoms_overlay]
auto-sync = yes
location = /var/db/repos/tecknicaltom
sync-type = git
sync-uri = https://github.com/tecknicaltom/tecknicaltoms_overlay.git
```

Do a full `emerge --sync` or selective `emaint sync -r tecknicaltoms_overlay`.

Use `eselect profile` to update to the new profile.
