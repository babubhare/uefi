#include <efi.h>
#include <efilib.h>

EFI_STATUS EFIAPI efi_main (EFI_HANDLE ImageHandle, EFI_SYSTEM_TABLE *SystemTable)
{
    EFI_LOADED_IMAGE_PROTOCOL *LoadedImage;
    EFI_STATUS Status;
    InitializeLib(ImageHandle, SystemTable);
    Print(L"Hello, world!\n");

    Status = gBS->HandleProtocol(ImageHandle, &gEfiLoadedImageProtocolGuid, (VOID **)&LoadedImage);
    if (!EFI_ERROR(Status)) {
        Print(L"Image Base: %p\n", LoadedImage->ImageBase);
    }
    else
    {
        Print(L"Unable to Load\n");
    }

    return EFI_SUCCESS;
}