# Command to refresh out database via cakphp Migrations
ssh twray@nss 'bash -s /home/twray/Projects/nss/bin/cake migrations rollback -t 0 && /home/twray/Projects/nss/bin/cake migrations migrate'
