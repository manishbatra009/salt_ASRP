base:
  'G@kernel:linux and G@env:prod':
    - match: compound
    - yum
    - idm
    - splunk.dual_splunk
    - sudoers
    - ntp


  'G@cis_enabled:True and G@env:prod':
    - match: compound
    - rootlogin.disable
    - s7cis


  'G@env:prod and G@apps:python_gnupg':
    - match: compound
    - python_gnupg


  'change_root:True and G@env:prod':
    - match: grain
    - users.root

