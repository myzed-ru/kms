# kms-lcg

Local KMS server from https://github.com/Wind4/vlmcsd

## Getting started
```shell
git clone git@github.com:myzed-ru/kms.git

cd kms
docker build -t myzedru/kms:latest .

docker push myzedru/kms:latest

docker run -d -p 1688:1688  myzedru/kms:latest
```

# Activate
Execute on client machines.
## For OS Windows:
```pwsh
# Set KMS key of product
slmgr.vbs -ipk XXXXX-XXXXX-XXXXX-XXXXX-XXXXX

# Set address of KMS server
slmgr /skms custom-kms.local:1688

# Activate
slmgr.vbs /ato

# Get activate status 
slmgr.vbs /dlv
```

## For Office 
```pwsh
# go to MS Office dir (depend on version)
cd "C:\Program Files\Microsoft Office\Office16"

# Create/reset address/port (default 1688) kms activate server
cscript.exe OSPP.VBS /remhst
cscript.exe OSPP.VBS /sethst:custom-kms.local
cscript ospp.vbs /setprt:1688

# Set KMS key of product
cscript ospp.vbs /inpkey:XXXXX-XXXXX-XXXXX-XXXXX-XXXXX

# Activate
cscript.exe OSPP.VBS /act

# Get activate status
cscript.exe OSPP.VBS /dstatus
```

GLVK keys:
| OS Version | KMS key  |
|---|---|
|  Windows 11 Pro, Windows 10 Pro | W269N-WFGWX-YVC9B-4J6C9-T83GX |
| Windows 11 Pro N, Windows 10 Pro N  |  MH37W-N47XK-V7XM9-C7227-GCQG9 |
| Windows 11 Pro Workstation, Windows 10 Pro Workstation  |  NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J |
