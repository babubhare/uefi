#include <efi.h>
#include <efilib.h>

EFI_STATUS EFIAPI efi_main(EFI_HANDLE ImageHandle, EFI_SYSTEM_TABLE *SystemTable) {
    EFI_LOADED_IMAGE_PROTOCOL *LoadedImage;
    EFI_STATUS Status;

    InitializeLib(ImageHandle, SystemTable);

    Status = gBS->HandleProtocol(ImageHandle, &gEfiLoadedImageProtocolGuid, (VOID **)&LoadedImage);
    if (!EFI_ERROR(Status)) {
        Print(L"Image Base: %p\n", LoadedImage->ImageBase);
    }
    
    ST = SystemTable;
    BS = ST->BootServices;

    UINTN index;
    EFI_INPUT_KEY Key;
    EFI_EVENT event = ST->ConIn->WaitForKey;

    SIMPLE_INPUT_INTERFACE* conIn = ST->ConIn;
    SIMPLE_TEXT_OUTPUT_INTERFACE* conOut = ST->ConOut;
    conOut->OutputString(conOut, L"Hello UEFI");

    while(Key.ScanCode != SCAN_ESC)
    {
        BS->WaitForEvent(1, &event, &index);
        ST->ConIn->ReadKeyStroke(conIn, &Key);
        ST->ConOut->OutputString(conOut, &Key.UnicodeChar );
    }
    return EFI_SUCCESS;
}
