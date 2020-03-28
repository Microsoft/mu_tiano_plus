# ****************************************************************************
# AUTOGENERATED BY Packaging\generate_cryptodriver.py
# AUTOGENED AS CryptoDriver.inc.dsc
# DO NOT MODIFY
# GENERATED ON: 2020-03-27 23:38:08.476604

# this is to be included by a platform :)
[Defines]
!ifndef PEI_CRYPTO_SERVICES
 DEFINE PEI_CRYPTO_SERVICES = ALL
!endif
!if $(PEI_CRYPTO_SERVICES) IN "ALL TINY_SHA MINIMAL_SHA_SM3 SMALL_SHA_RSA STANDARD"
 # we don't have a problem
!else
 !error CRYPTO_SERVICES must be set to one of ALL TINY_SHA MINIMAL_SHA_SM3 SMALL_SHA_RSA STANDARD.
!endif
!ifndef PEI_CRYPTO_ARCH
 DEFINE PEI_CRYPTO_ARCH = IA32
!endif

!ifndef DXE_CRYPTO_SERVICES
 DEFINE DXE_CRYPTO_SERVICES = ALL
!endif
!if $(DXE_CRYPTO_SERVICES) IN "ALL TINY_SHA MINIMAL_SHA_SM3 SMALL_SHA_RSA STANDARD"
 # we don't have a problem
!else
 !error CRYPTO_SERVICES must be set to one of ALL TINY_SHA MINIMAL_SHA_SM3 SMALL_SHA_RSA STANDARD.
!endif
!ifndef DXE_CRYPTO_ARCH
 DEFINE DXE_CRYPTO_ARCH = X64
!endif

!ifndef SMM_CRYPTO_SERVICES
 DEFINE SMM_CRYPTO_SERVICES = ALL
!endif
!if $(SMM_CRYPTO_SERVICES) IN "ALL TINY_SHA MINIMAL_SHA_SM3 SMALL_SHA_RSA STANDARD"
 # we don't have a problem
!else
 !error CRYPTO_SERVICES must be set to one of ALL TINY_SHA MINIMAL_SHA_SM3 SMALL_SHA_RSA STANDARD.
!endif
!ifndef SMM_CRYPTO_ARCH
 DEFINE SMM_CRYPTO_ARCH = X64
!endif

!if $(PEI_CRYPTO_SERVICES) == "TINY_SHA"
  [Components.$(PEI_CRYPTO_ARCH)]
    CryptoPkg/Driver/Bin/CryptoDriverBin_TINY_SHA_Pei_$(TARGET).inf 

 [Components.PEIM]
   CryptoPkg/Library/BaseCryptLibOnProtocolPpi/PeiCryptLib.inf {
     <PcdsFixedAtBuild>
      !include CryptoPkg/Driver/Packaging/Crypto.pcd.TINY_SHA.inc.dsc
    }
!endif

!if $(DXE_CRYPTO_SERVICES) == "TINY_SHA"
  [Components.$(DXE_CRYPTO_ARCH)]
    CryptoPkg/Driver/Bin/CryptoDriverBin_TINY_SHA_Dxe_$(TARGET).inf 

 [Components.DXE_DRIVER, Components.UEFI_DRIVER, Components.UEFI_APPLICATION]
   CryptoPkg/Library/BaseCryptLibOnProtocolPpi/DxeCryptLib.inf {
     <PcdsFixedAtBuild>
      !include CryptoPkg/Driver/Packaging/Crypto.pcd.TINY_SHA.inc.dsc
    }
!endif

!if $(SMM_CRYPTO_SERVICES) == "TINY_SHA"
  [Components.$(SMM_CRYPTO_ARCH)]
    CryptoPkg/Driver/Bin/CryptoDriverBin_TINY_SHA_Smm_$(TARGET).inf 

 [Components.DXE_SMM_DRIVER]
   CryptoPkg/Library/BaseCryptLibOnProtocolPpi/SmmCryptLib.inf {
     <PcdsFixedAtBuild>
      !include CryptoPkg/Driver/Packaging/Crypto.pcd.TINY_SHA.inc.dsc
    }
!endif

!if $(PEI_CRYPTO_SERVICES) == "MINIMAL_SHA_SM3"
  [Components.$(PEI_CRYPTO_ARCH)]
    CryptoPkg/Driver/Bin/CryptoDriverBin_MINIMAL_SHA_SM3_Pei_$(TARGET).inf 

 [Components.PEIM]
   CryptoPkg/Library/BaseCryptLibOnProtocolPpi/PeiCryptLib.inf {
     <PcdsFixedAtBuild>
      !include CryptoPkg/Driver/Packaging/Crypto.pcd.MINIMAL_SHA_SM3.inc.dsc
    }
!endif

!if $(DXE_CRYPTO_SERVICES) == "MINIMAL_SHA_SM3"
  [Components.$(DXE_CRYPTO_ARCH)]
    CryptoPkg/Driver/Bin/CryptoDriverBin_MINIMAL_SHA_SM3_Dxe_$(TARGET).inf 

 [Components.DXE_DRIVER, Components.UEFI_DRIVER, Components.UEFI_APPLICATION]
   CryptoPkg/Library/BaseCryptLibOnProtocolPpi/DxeCryptLib.inf {
     <PcdsFixedAtBuild>
      !include CryptoPkg/Driver/Packaging/Crypto.pcd.MINIMAL_SHA_SM3.inc.dsc
    }
!endif

!if $(SMM_CRYPTO_SERVICES) == "MINIMAL_SHA_SM3"
  [Components.$(SMM_CRYPTO_ARCH)]
    CryptoPkg/Driver/Bin/CryptoDriverBin_MINIMAL_SHA_SM3_Smm_$(TARGET).inf 

 [Components.DXE_SMM_DRIVER]
   CryptoPkg/Library/BaseCryptLibOnProtocolPpi/SmmCryptLib.inf {
     <PcdsFixedAtBuild>
      !include CryptoPkg/Driver/Packaging/Crypto.pcd.MINIMAL_SHA_SM3.inc.dsc
    }
!endif

!if $(PEI_CRYPTO_SERVICES) == "SMALL_SHA_RSA"
  [Components.$(PEI_CRYPTO_ARCH)]
    CryptoPkg/Driver/Bin/CryptoDriverBin_SMALL_SHA_RSA_Pei_$(TARGET).inf 

 [Components.PEIM]
   CryptoPkg/Library/BaseCryptLibOnProtocolPpi/PeiCryptLib.inf {
     <PcdsFixedAtBuild>
      !include CryptoPkg/Driver/Packaging/Crypto.pcd.SMALL_SHA_RSA.inc.dsc
    }
!endif

!if $(DXE_CRYPTO_SERVICES) == "SMALL_SHA_RSA"
  [Components.$(DXE_CRYPTO_ARCH)]
    CryptoPkg/Driver/Bin/CryptoDriverBin_SMALL_SHA_RSA_Dxe_$(TARGET).inf 

 [Components.DXE_DRIVER, Components.UEFI_DRIVER, Components.UEFI_APPLICATION]
   CryptoPkg/Library/BaseCryptLibOnProtocolPpi/DxeCryptLib.inf {
     <PcdsFixedAtBuild>
      !include CryptoPkg/Driver/Packaging/Crypto.pcd.SMALL_SHA_RSA.inc.dsc
    }
!endif

!if $(SMM_CRYPTO_SERVICES) == "SMALL_SHA_RSA"
  [Components.$(SMM_CRYPTO_ARCH)]
    CryptoPkg/Driver/Bin/CryptoDriverBin_SMALL_SHA_RSA_Smm_$(TARGET).inf 

 [Components.DXE_SMM_DRIVER]
   CryptoPkg/Library/BaseCryptLibOnProtocolPpi/SmmCryptLib.inf {
     <PcdsFixedAtBuild>
      !include CryptoPkg/Driver/Packaging/Crypto.pcd.SMALL_SHA_RSA.inc.dsc
    }
!endif

!if $(PEI_CRYPTO_SERVICES) == "STANDARD"
  [Components.$(PEI_CRYPTO_ARCH)]
    CryptoPkg/Driver/Bin/CryptoDriverBin_STANDARD_Pei_$(TARGET).inf 

 [Components.PEIM]
   CryptoPkg/Library/BaseCryptLibOnProtocolPpi/PeiCryptLib.inf {
     <PcdsFixedAtBuild>
      !include CryptoPkg/Driver/Packaging/Crypto.pcd.STANDARD.inc.dsc
    }
!endif

!if $(DXE_CRYPTO_SERVICES) == "STANDARD"
  [Components.$(DXE_CRYPTO_ARCH)]
    CryptoPkg/Driver/Bin/CryptoDriverBin_STANDARD_Dxe_$(TARGET).inf 

 [Components.DXE_DRIVER, Components.UEFI_DRIVER, Components.UEFI_APPLICATION]
   CryptoPkg/Library/BaseCryptLibOnProtocolPpi/DxeCryptLib.inf {
     <PcdsFixedAtBuild>
      !include CryptoPkg/Driver/Packaging/Crypto.pcd.STANDARD.inc.dsc
    }
!endif

!if $(SMM_CRYPTO_SERVICES) == "STANDARD"
  [Components.$(SMM_CRYPTO_ARCH)]
    CryptoPkg/Driver/Bin/CryptoDriverBin_STANDARD_Smm_$(TARGET).inf 

 [Components.DXE_SMM_DRIVER]
   CryptoPkg/Library/BaseCryptLibOnProtocolPpi/SmmCryptLib.inf {
     <PcdsFixedAtBuild>
      !include CryptoPkg/Driver/Packaging/Crypto.pcd.STANDARD.inc.dsc
    }
!endif

