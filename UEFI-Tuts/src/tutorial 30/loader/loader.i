# 0 "loader/loader.c"
# 1 "E:\\wf\\src\\uefi\\UEFI-Tuts\\src\\tutorial 30//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "loader/loader.c"




# 1 "loader/../efi.h" 1






# 1 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/14.1.0/include/stdint.h" 1 3 4
# 11 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/14.1.0/include/stdint.h" 3 4
# 1 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/14.1.0/include/stdint-gcc.h" 1 3 4
# 34 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/14.1.0/include/stdint-gcc.h" 3 4

# 34 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/14.1.0/include/stdint-gcc.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef signed char int_fast8_t;
typedef short int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned char uint_fast8_t;
typedef short unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef long long int intptr_t;


typedef long long unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 12 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/14.1.0/include/stdint.h" 2 3 4
# 8 "loader/../efi.h" 2
# 98 "loader/../efi.h"

# 98 "loader/../efi.h"
typedef uint_least16_t CHAR16;

typedef unsigned char UINT8;
typedef unsigned short UINT16;
typedef unsigned int UINT32;
typedef unsigned long long UINT64;

typedef int INT32;




typedef unsigned long long UINTN;

typedef unsigned char BOOLEAN;

typedef UINTN EFI_TPL;
typedef void *EFI_HANDLE;
typedef UINT64 EFI_STATUS;
typedef void *EFI_EVENT;
typedef UINT64 EFI_PHYSICAL_ADDRESS;
typedef UINT64 EFI_VIRTUAL_ADDRESS;



typedef struct EFI_GUID
{
    UINT32 Data1;
    UINT16 Data2;
    UINT16 Data3;
    UINT8 Data4[8];
} EFI_GUID;



struct EFI_GUID EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID = {0x9042a9de, 0x23dc, 0x4a38, {0x96, 0xfb, 0x7a, 0xde, 0xd0, 0x80, 0x51, 0x6a}};
struct EFI_GUID EFI_LOADED_IMAGE_PROTOCOL_GUID = {0x5b1b31a1, 0x9562, 0x11d2, {0x8e, 0x3f, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b}};
struct EFI_GUID EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID = {0x964e5b22, 0x6459, 0x11d2, {0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b}};
struct EFI_GUID EFI_DEVICE_PATH_PROTOCOL_GUID = {0x09576e91, 0x6d3f, 0x11d2, {0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b}};
struct EFI_GUID EFI_FILE_INFO_GUID = {0x09576e92, 0x6d3f, 0x11d2, {0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b}};
struct EFI_GUID ACPI_20_TABLE_GUID = {0x8868e871, 0xe4f1, 0x11d3, {0xbc, 0x22, 0x00, 0x80, 0xc7, 0x3c, 0x88, 0x81}};


struct EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL;
struct EFI_SIMPLE_TEXT_INPUT_PROTOCOL;
struct EFI_BOOT_SERVICES;
struct EFI_GRAPHICS_OUTPUT_PROTOCOL;
struct EFI_SIMPLE_FILE_SYSTEM_PROTOCOL;
struct EFI_FILE_PROTOCOL;


typedef enum EFI_MEMORY_TYPE
{
    EfiReservedMemoryType,
    EfiLoaderCode,
    EfiLoaderData,
    EfiBootServicesCode,
    EfiBootServicesData,
    EfiRuntimeServicesCode,
    EfiRuntimeServicesData,
    EfiConventionalMemory,
    EfiUnusableMemory,
    EfiACPIReclaimMemory,
    EfiACPIMemoryNVS,
    EfiMemoryMappedIO,
    EfiMemoryMappedIOPortSpace,
    EfiPalCode,
    EfiPersistentMemory,
    EfiUnacceptedMemoryType,
    EfiMaxMemoryType
} EFI_MEMORY_TYPE;


typedef struct EFI_TIME
{
 UINT16 Year;
 UINT8 Month;
 UINT8 Day;
 UINT8 Hour;
 UINT8 Minute;
 UINT8 Second;
 UINT8 Pad1;
 UINT32 Nanosecond;
 UINT16 TimeZone;
 UINT8 DayLight;
 UINT8 Pad2;
} EFI_TIME;


typedef struct EFI_TIME_CAPABILITIES
{
 UINT32 Resolution;
 UINT32 Accuracy;
 BOOLEAN SetsToZero;
} EFI_TIME_CAPABILITIES;



typedef enum EFI_RESET_TYPE
{
    EfiResetCold,
    EfiResetWarm,
    EfiResetShutdown,
    EfiResetPlatformSpecific
} EFI_RESET_TYPE;


typedef struct EFI_CONFIGURATION_TABLE
{
    EFI_GUID VendorGuid;
    void *VendorTable;
} EFI_CONFIGURATION_TABLE;



typedef struct EFI_TABLE_HEADER
{
    UINT64 Signature;
    UINT32 Revision;
    UINT32 HeaderSize;
    UINT32 CRC32;
    UINT32 Reserved;
} EFI_TABLE_HEADER;


typedef enum EFI_ALLOCATE_TYPE
{
    AllocateAnyPages,
    AllocateMaxAddress,
    AllocateAddress,
    MaxAllocateType
} EFI_ALLOCATE_TYPE;


typedef enum EFI_TIMER_DELAY
{
    TimerCancel,
    TimerPeriodic,
    TimerRelative
} EFI_TIMER_DELAY;


typedef struct EFI_MEMORY_DESCRIPTOR
{
    UINT32 Type;
    EFI_PHYSICAL_ADDRESS PhysicalStart;
    EFI_VIRTUAL_ADDRESS VirtualStart;
    UINT64 NumberOfPages;
    UINT64 Attribute;
} EFI_MEMORY_DESCRIPTOR;


typedef enum EFI_INTERFACE_TYPE
{
    EFI_NATIVE_INTERFACE
} EFI_INTERFACE_TYPE;


typedef enum EFI_LOCATE_SEARCH_TYPE
{
    AllHandles,
    ByRegisterNotify,
    ByProtocol
} EFI_LOCATE_SEARCH_TYPE;


typedef struct EFI_OPEN_PROTOCOL_INFORMATION_ENTRY
{
    EFI_HANDLE AgentHandle;
    EFI_HANDLE ControllerHandle;
    UINT32 Attributes;
    UINT32 OpenCount;
} EFI_OPEN_PROTOCOL_INFORMATION_ENTRY;


typedef struct EFI_DEVICE_PATH_PROTOCOL
{
    UINT8 Type;
    UINT8 SubType;
    UINT8 Length[2];
} EFI_DEVICE_PATH_PROTOCOL;


typedef struct EFI_CAPSULE_HEADER
{
    EFI_GUID CapsuleGuid;
    UINT32 HeaderSize;
    UINT32 Flags;
    UINT32 CapsuleImageSize;
} EFI_CAPSULE_HEADER;





typedef struct EFI_INPUT_KEY
{
 UINT16 ScanCode;
 UINT16 UnicodeChar;
}EFI_INPUT_KEY;


typedef void(*EFI_EVENT_NOTIFY)(EFI_EVENT Event, void *Context);


typedef EFI_STATUS (*EFI_INPUT_RESET)(struct EFI_SIMPLE_TEXT_INPUT_PROTOCOL *This, BOOLEAN ExtendedVerification);


typedef EFI_STATUS (*EFI_INPUT_READ_KEY)(struct EFI_SIMPLE_TEXT_INPUT_PROTOCOL *This, EFI_INPUT_KEY *Key);



typedef struct EFI_SIMPLE_TEXT_INPUT_PROTOCOL
{
 EFI_INPUT_RESET Reset;
 EFI_INPUT_READ_KEY ReadKeyStroke;
 EFI_EVENT WaitForKey;
} EFI_SIMPLE_TEXT_INPUT_PROTOCOL;



typedef struct SIMPLE_TEXT_OUTPUT_MODE
{
    INT32 MaxMode;
    INT32 Mode;
    INT32 Attribute;
    INT32 CursorColumn;
    INT32 CursorRow;
    BOOLEAN CursorVisible;
} SIMPLE_TEXT_OUTPUT_MODE;


typedef EFI_STATUS (*EFI_TEXT_RESET)(struct EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL *This, BOOLEAN ExtendedVerification);


typedef EFI_STATUS (*EFI_TEXT_STRING)(struct EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL *This, CHAR16 *String);



typedef EFI_STATUS (*EFI_TEXT_TEST_STRING)(struct EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL *This, CHAR16 *String);
typedef EFI_STATUS (*EFI_TEXT_QUERY_MODE)(struct EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL *This, UINTN ModeNumber, UINTN *Columns, UINTN *Rows);
typedef EFI_STATUS (*EFI_TEXT_SET_MODE)(struct EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL *This, UINTN ModeNumber);


typedef EFI_STATUS (*EFI_TEXT_SET_ATTRIBUTE)(struct EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL *This, UINTN Attribute);


typedef EFI_STATUS (*EFI_TEXT_CLEAR_SCREEN)(struct EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL *This);


typedef EFI_STATUS (*EFI_TEXT_SET_CURSOR_POSITION)(struct EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL *This, UINTN Column, UINTN Row);


typedef EFI_STATUS (*EFI_TEXT_ENABLE_CURSOR)(struct EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL *This, BOOLEAN Visible);



typedef struct EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL
{
    EFI_TEXT_RESET Reset;
    EFI_TEXT_STRING OutputString;
    EFI_TEXT_TEST_STRING TestString;
    EFI_TEXT_QUERY_MODE QueryMode;
    EFI_TEXT_SET_MODE SetMode;
    EFI_TEXT_SET_ATTRIBUTE SetAttribute;
    EFI_TEXT_CLEAR_SCREEN ClearScreen;
    EFI_TEXT_SET_CURSOR_POSITION SetCursorPosition;
    EFI_TEXT_ENABLE_CURSOR EnableCursor;
    SIMPLE_TEXT_OUTPUT_MODE *Mode;
} EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL;

typedef EFI_STATUS (*EFI_RAISE_TPL)(EFI_TPL NewTpl);
typedef EFI_STATUS (*EFI_RESTORE_TPL)(EFI_TPL OldTpl);
typedef EFI_STATUS (*EFI_ALLOCATE_PAGES)(EFI_ALLOCATE_TYPE Type, UINTN MemoryType, UINTN Pages, EFI_PHYSICAL_ADDRESS *Memory);
typedef EFI_STATUS (*EFI_FREE_PAGES)(EFI_PHYSICAL_ADDRESS Memory, UINTN Pages);
typedef EFI_STATUS (*EFI_GET_MEMORY_MAP)(UINTN *MemoryMapSize, EFI_MEMORY_DESCRIPTOR *MemoryMap, UINTN *MapKey, UINTN *DescriptorSize, UINT32 *DescriptorVersion);
typedef EFI_STATUS (*EFI_ALLOCATE_POOL)(UINTN PoolType, UINTN Size, void **Buffer);
typedef EFI_STATUS (*EFI_FREE_POOL)(void *Buffer);
typedef EFI_STATUS (*EFI_CREATE_EVENT)(UINT32 Type, EFI_TPL NotifyTpl, EFI_EVENT_NOTIFY NotifyFunction, void *NotifyContext, EFI_GUID *EventGroup, EFI_EVENT *Event);
typedef EFI_STATUS (*EFI_SET_TIMER)(EFI_EVENT Event, EFI_TIMER_DELAY Type, UINT64 TriggerTime);
typedef EFI_STATUS (*EFI_WAIT_FOR_EVENT)(UINTN NumberOfEvents, EFI_EVENT *Event, UINTN *Index);
typedef EFI_STATUS (*EFI_SIGNAL_EVENT)(EFI_EVENT Event);
typedef EFI_STATUS (*EFI_CLOSE_EVENT)(EFI_EVENT Event);
typedef EFI_STATUS (*EFI_CHECK_EVENT)(EFI_EVENT Event);
typedef EFI_STATUS (*EFI_INSTALL_PROTOCOL_INTERFACE)(EFI_HANDLE *Handle, EFI_GUID *Protocol, EFI_INTERFACE_TYPE InterfaceType, void *Interface);
typedef EFI_STATUS (*EFI_REINSTALL_PROTOCOL_INTERFACE)(EFI_HANDLE Handle, EFI_GUID *Protocol, void *OldInterface, void *NewInterface);
typedef EFI_STATUS (*EFI_UNINSTALL_PROTOCOL_INTERFACE)(EFI_HANDLE Handle, EFI_GUID *Protocol, void *Interface);
typedef EFI_STATUS (*EFI_HANDLE_PROTOCOL)(EFI_HANDLE Handle, EFI_GUID *Protocol, void **Interface);
typedef EFI_STATUS (*EFI_REGISTER_PROTOCOL_NOTIFY)(EFI_GUID *Protocol, EFI_EVENT Event, void **Registration);
typedef EFI_STATUS (*EFI_LOCATE_HANDLE)(EFI_LOCATE_SEARCH_TYPE SearchType, EFI_GUID *Protocol, void *SearchKey, UINTN *BufferSize, EFI_HANDLE *Buffer);
typedef EFI_STATUS (*EFI_LOCATE_DEVICE_PATH)(EFI_GUID *Protocol, EFI_DEVICE_PATH_PROTOCOL **DevicePath, EFI_HANDLE *Device);
typedef EFI_STATUS (*EFI_INSTALL_CONFIGURATION_TABLE)(EFI_GUID *Guid, void *Table);
typedef EFI_STATUS (*EFI_IMAGE_LOAD)(BOOLEAN BootPolicy, EFI_HANDLE ParentImageHandle, EFI_DEVICE_PATH_PROTOCOL *DevicePath, void *SourceBuffer, UINTN SourceSize, EFI_HANDLE *ImageHandle);
typedef EFI_STATUS (*EFI_IMAGE_START)(EFI_HANDLE ImageHandle, UINTN *ExitDataSize, CHAR16 **ExitData);
typedef EFI_STATUS (*EFI_EXIT)(EFI_HANDLE ImageHandle, EFI_STATUS ExitStatus, UINTN ExitDataSize, CHAR16 *ExitData);
typedef EFI_STATUS (*EFI_IMAGE_UNLOAD)(EFI_HANDLE ImageHandle);
typedef EFI_STATUS (*EFI_EXIT_BOOT_SERVICES)(EFI_HANDLE ImageHandle, UINTN MapKey);
typedef EFI_STATUS (*EFI_GET_NEXT_MONOTONIC_COUNT)(UINT64 *Count);
typedef EFI_STATUS (*EFI_STALL)(UINTN Microseconds);
typedef EFI_STATUS (*EFI_SET_WATCHDOG_TIMER)(UINTN Timeout, UINT64 WatchdogCode, UINTN DataSize, CHAR16 *WatchdogData);
typedef EFI_STATUS (*EFI_CONNECT_CONTROLLER)(EFI_HANDLE ControllerHandle, EFI_HANDLE *DriverImageHandle, EFI_DEVICE_PATH_PROTOCOL *RemainingDevicePath, BOOLEAN Recursive);
typedef EFI_STATUS (*EFI_DISCONNECT_CONTROLLER)(EFI_HANDLE ControllerHandle, EFI_HANDLE DriverImageHandle, EFI_HANDLE ChildHandle);
typedef EFI_STATUS (*EFI_OPEN_PROTOCOL)(EFI_HANDLE Handle, EFI_GUID *Protocol, void **Interface, EFI_HANDLE AgentHandle, EFI_HANDLE ControllerHandle, UINT32 Attributes);
typedef EFI_STATUS (*EFI_CLOSE_PROTOCOL)(EFI_HANDLE Handle, EFI_GUID *Protocol, EFI_HANDLE AgentHandle, EFI_HANDLE ControllerHandle);
typedef EFI_STATUS (*EFI_OPEN_PROTOCOL_INFORMATION)(EFI_HANDLE Handle, EFI_GUID *Protocol, EFI_OPEN_PROTOCOL_INFORMATION_ENTRY **EntryBuffer, UINTN *EntryCount);
typedef EFI_STATUS (*EFI_PROTOCOLS_PER_HANDLE)(EFI_HANDLE Handle, EFI_GUID ***ProtocolBuffer, UINTN *ProtocolBufferCount);
typedef EFI_STATUS (*EFI_LOCATE_HANDLE_BUFFER)(EFI_LOCATE_SEARCH_TYPE SearchType, EFI_GUID *Protocol, void *SearchKey, UINTN *NoHandles, EFI_HANDLE **Buffer);
typedef EFI_STATUS (*EFI_LOCATE_PROTOCOL)(EFI_GUID *Protocol, void *Registration, void **Interface);
typedef EFI_STATUS (*EFI_INSTALL_MULTIPLE_PROTOCOL_INTERFACES)(EFI_HANDLE *Handle, ...);
typedef EFI_STATUS (*EFI_UNINSTALL_MULTIPLE_PROTOCOL_INTERFACES)(EFI_HANDLE *Handle, ...);
typedef EFI_STATUS (*EFI_CALCULATE_CRC32)(void *Data, UINTN DataSize, UINT32 *Crc32);
typedef EFI_STATUS (*EFI_COPY_MEM)(void *Destination, void *Source, UINTN Length);
typedef EFI_STATUS (*EFI_SET_MEM)(void *Buffer, UINTN Size, UINT8 Value);
typedef EFI_STATUS (*EFI_CREATE_EVENT_EX)(UINT32 Type, EFI_TPL NotifyTpl, EFI_EVENT_NOTIFY NotifyFunction, void *NotifyContext, EFI_GUID *EventGroup, EFI_EVENT *Event);



typedef struct EFI_BOOT_SERVICES
{
    EFI_TABLE_HEADER Hdr;
    EFI_RAISE_TPL RaiseTPL;
    EFI_RESTORE_TPL RestoreTPL;
    EFI_ALLOCATE_PAGES AllocatePages;
    EFI_FREE_PAGES FreePages;
    EFI_GET_MEMORY_MAP GetMemoryMap;
    EFI_ALLOCATE_POOL AllocatePool;
    EFI_FREE_POOL FreePool;
    EFI_CREATE_EVENT CreateEvent;
    EFI_SET_TIMER SetTimer;
    EFI_WAIT_FOR_EVENT WaitForEvent;
    EFI_SIGNAL_EVENT SignalEvent;
    EFI_CLOSE_EVENT CloseEvent;
    EFI_CHECK_EVENT CheckEvent;
    EFI_INSTALL_PROTOCOL_INTERFACE InstallProtocolInterface;
    EFI_REINSTALL_PROTOCOL_INTERFACE ReinstallProtocolInterface;
    EFI_UNINSTALL_PROTOCOL_INTERFACE UninstallProtocolInterface;
    EFI_HANDLE_PROTOCOL HandleProtocol;
    void *Reserved;
    EFI_REGISTER_PROTOCOL_NOTIFY RegisterProtocolNotify;
    EFI_LOCATE_HANDLE LocateHandle;
    EFI_LOCATE_DEVICE_PATH LocateDevicePath;
    EFI_INSTALL_CONFIGURATION_TABLE InstallConfigurationTable;
    EFI_IMAGE_LOAD LoadImage;
    EFI_IMAGE_START StartImage;
    EFI_EXIT Exit;
    EFI_IMAGE_UNLOAD UnloadImage;
    EFI_EXIT_BOOT_SERVICES ExitBootServices;
    EFI_GET_NEXT_MONOTONIC_COUNT GetNextMonotonicCount;
    EFI_STALL Stall;
    EFI_SET_WATCHDOG_TIMER SetWatchdogTimer;
    EFI_CONNECT_CONTROLLER ConnectController;
    EFI_DISCONNECT_CONTROLLER DisconnectController;
    EFI_OPEN_PROTOCOL OpenProtocol;
    EFI_CLOSE_PROTOCOL CloseProtocol;
    EFI_OPEN_PROTOCOL_INFORMATION OpenProtocolInformation;
    EFI_PROTOCOLS_PER_HANDLE ProtocolsPerHandle;
    EFI_LOCATE_HANDLE_BUFFER LocateHandleBuffer;
    EFI_LOCATE_PROTOCOL LocateProtocol;
    EFI_INSTALL_MULTIPLE_PROTOCOL_INTERFACES InstallMultipleProtocolInterfaces;
    EFI_UNINSTALL_MULTIPLE_PROTOCOL_INTERFACES UninstallMultipleProtocolInterfaces;
    EFI_CALCULATE_CRC32 CalculateCrc32;
    EFI_COPY_MEM CopyMem;
    EFI_SET_MEM SetMem;
    EFI_CREATE_EVENT_EX CreateEventEx;
} EFI_BOOT_SERVICES;


typedef EFI_STATUS (*EFI_GET_TIME)(EFI_TIME *Time, EFI_TIME_CAPABILITIES *Capabilities);
typedef EFI_STATUS (*EFI_SET_TIME)(EFI_TIME *Time);
typedef EFI_STATUS (*EFI_GET_WAKEUP_TIME)(BOOLEAN *Enabled, BOOLEAN *Pending, EFI_TIME *Time);
typedef EFI_STATUS (*EFI_SET_WAKEUP_TIME)(BOOLEAN Enable, EFI_TIME *Time);
typedef EFI_STATUS (*EFI_SET_VIRTUAL_ADDRESS_MAP)(UINTN MemoryMapSize, UINTN DescriptorSize, UINT32 DescriptorVersion, EFI_MEMORY_DESCRIPTOR *VirtualMap);
typedef EFI_STATUS (*EFI_CONVERT_POINTER)(UINTN DebugDisposition, void **Address);
typedef EFI_STATUS (*EFI_GET_VARIABLE)(CHAR16 *VariableName, EFI_GUID *VendorGuid, UINT32 *Attributes, UINTN *DataSize, void *Data);
typedef EFI_STATUS (*EFI_GET_NEXT_VARIABLE_NAME)(UINTN *VariableNameSize, CHAR16 *VariableName, EFI_GUID *VendorGuid);
typedef EFI_STATUS (*EFI_SET_VARIABLE)(CHAR16 *VariableName, EFI_GUID *VendorGuid, UINT32 Attributes, UINTN DataSize, void *Data);
typedef EFI_STATUS (*EFI_GET_NEXT_HIGH_MONO_COUNT)(UINT32 *HighCount);
typedef EFI_STATUS (*EFI_RESET_SYSTEM)(EFI_RESET_TYPE ResetType, EFI_STATUS ResetStatus, UINTN DataSize, void *ResetData);
typedef EFI_STATUS (*EFI_UPDATE_CAPSULE)(EFI_CAPSULE_HEADER **CapsuleHeaderArray, UINTN CapsuleCount, EFI_PHYSICAL_ADDRESS ScatterGatherList);
typedef EFI_STATUS (*EFI_QUERY_CAPSULE_CAPABILITIES)(EFI_CAPSULE_HEADER **CapsuleHeaderArray, UINTN CapsuleCount, UINT64 *MaximumCapsuleSize, EFI_RESET_TYPE *ResetType);
typedef EFI_STATUS (*EFI_QUERY_VARIABLE_INFO)(UINT32 Attributes, UINT64 *MaximumVariableStorageSize, UINT64 *RemainingVariableStorageSize, UINT64 *MaximumVariableSize);


typedef struct EFI_RUNTIME_SERVICES
{
    EFI_TABLE_HEADER Hdr;
    EFI_GET_TIME GetTime;
    EFI_SET_TIME SetTime;
    EFI_GET_WAKEUP_TIME GetWakeupTime;
    EFI_SET_WAKEUP_TIME SetWakeupTime;
    EFI_SET_VIRTUAL_ADDRESS_MAP SetVirtualAddressMap;
    EFI_CONVERT_POINTER ConvertPointer;
    EFI_GET_VARIABLE GetVariable;
    EFI_GET_NEXT_VARIABLE_NAME GetNextVariableName;
    EFI_SET_VARIABLE SetVariable;
    EFI_GET_NEXT_HIGH_MONO_COUNT GetNextHighMonotonicCount;
    EFI_RESET_SYSTEM ResetSystem;
    EFI_UPDATE_CAPSULE UpdateCapsule;
    EFI_QUERY_CAPSULE_CAPABILITIES QueryCapsuleCapabilities;
    EFI_QUERY_VARIABLE_INFO QueryVariableInfo;
} EFI_RUNTIME_SERVICES;




typedef struct EFI_FILE_IO_TOKEN
{
    EFI_EVENT Event;
    EFI_STATUS Status;
    UINTN BufferSize;
    void *Buffer;
} EFI_FILE_IO_TOKEN;


typedef struct EFI_FILE_INFO {
    UINT64 Size;
    UINT64 FileSize;
    UINT64 PhysicalSize;
    EFI_TIME CreateTime;
    EFI_TIME LastAccessTime;
    EFI_TIME ModificationTime;
    UINT64 Attribute;
    CHAR16 FileName[];
} EFI_FILE_INFO;

typedef EFI_STATUS (*EFI_FILE_OPEN)(struct EFI_FILE_PROTOCOL *This, struct EFI_FILE_PROTOCOL **NewHandle, CHAR16 *FileName, UINT64 OpenMode, UINT64 Attributes);
typedef EFI_STATUS (*EFI_FILE_CLOSE)(struct EFI_FILE_PROTOCOL *This);
typedef EFI_STATUS (*EFI_FILE_DELETE)(struct EFI_FILE_PROTOCOL *This);
typedef EFI_STATUS (*EFI_FILE_READ)(struct EFI_FILE_PROTOCOL *This, UINTN *BufferSize, void *Buffer);
typedef EFI_STATUS (*EFI_FILE_WRITE)(struct EFI_FILE_PROTOCOL *This, UINTN *BufferSize, void *Buffer);
typedef EFI_STATUS (*EFI_FILE_GET_POSITION)(struct EFI_FILE_PROTOCOL *This, UINT64 *Position);
typedef EFI_STATUS (*EFI_FILE_SET_POSITION)(struct EFI_FILE_PROTOCOL *This, UINT64 Position);
typedef EFI_STATUS (*EFI_FILE_GET_INFO)(struct EFI_FILE_PROTOCOL *This, void* InformationType, UINTN* BufferSize, void* Buffer);
typedef EFI_STATUS (*EFI_FILE_SET_INFO)(struct EFI_FILE_PROTOCOL *This, EFI_GUID *InformationType, UINTN BufferSize, void *Buffer);
typedef EFI_STATUS (*EFI_FILE_FLUSH)(struct EFI_FILE_PROTOCOL *This);
typedef EFI_STATUS (*EFI_FILE_OPEN_EX)(struct EFI_FILE_PROTOCOL *This, struct EFI_FILE_PROTOCOL **NewHandle, CHAR16 *FileName, UINT64 OpenMode, UINT64 Attributes, EFI_FILE_IO_TOKEN *Token);
typedef EFI_STATUS (*EFI_FILE_READ_EX)(struct EFI_FILE_PROTOCOL *This, EFI_FILE_IO_TOKEN *Token);
typedef EFI_STATUS (*EFI_FILE_WRITE_EX)(struct EFI_FILE_PROTOCOL *This, EFI_FILE_IO_TOKEN *Token);
typedef EFI_STATUS (*EFI_FILE_FLUSH_EX)(struct EFI_FILE_PROTOCOL *This, EFI_FILE_IO_TOKEN *Token);


typedef struct EFI_FILE_PROTOCOL
{
    UINT64 Revision;
    EFI_FILE_OPEN Open;
    EFI_FILE_CLOSE Close;
    EFI_FILE_DELETE Delete;
    EFI_FILE_READ Read;
    EFI_FILE_WRITE Write;
    EFI_FILE_GET_POSITION GetPosition;
    EFI_FILE_SET_POSITION SetPosition;
    EFI_FILE_GET_INFO GetInfo;
    EFI_FILE_SET_INFO SetInfo;
    EFI_FILE_FLUSH Flush;
    EFI_FILE_OPEN_EX OpenEx;
    EFI_FILE_READ_EX ReadEx;
    EFI_FILE_WRITE_EX WriteEx;
    EFI_FILE_FLUSH_EX FlushEx;
} EFI_FILE_PROTOCOL;

typedef EFI_STATUS (*EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_OPEN_VOLUME)(struct EFI_SIMPLE_FILE_SYSTEM_PROTOCOL *This, EFI_FILE_PROTOCOL **Root);


typedef struct EFI_SIMPLE_FILE_SYSTEM_PROTOCOL
{
    UINT64 Revision;
    EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_OPEN_VOLUME OpenVolume;
} EFI_SIMPLE_FILE_SYSTEM_PROTOCOL;





typedef struct EFI_SYSTEM_TABLE
{
 EFI_TABLE_HEADER hdr;
 CHAR16 *FirmwareVendor;
 UINT32 FirmwareVersion;
 EFI_HANDLE ConsoleInHandle;
 EFI_SIMPLE_TEXT_INPUT_PROTOCOL *ConIn;
 EFI_HANDLE ConsoleOutHandle;
 EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL *ConOut;
 EFI_HANDLE StandardErrorHandle;
 EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL *StdErr;
 EFI_RUNTIME_SERVICES *RuntimeServices;
 EFI_BOOT_SERVICES *BootServices;
 UINTN NumberOfTableEntries;
 EFI_CONFIGURATION_TABLE *ConfigurationTable;
} EFI_SYSTEM_TABLE;


typedef struct EFI_LOADED_IMAGE_PROTOCOL
{
    UINT32 Revision;
    EFI_HANDLE ParentHandle;
    EFI_SYSTEM_TABLE *SystemTable;
    EFI_HANDLE DeviceHandle;
    EFI_DEVICE_PATH_PROTOCOL *FilePath;
    void *Reserved;
    UINT32 LoadOptionsSize;
    void *LoadOptions;
    void *ImageBase;
    UINT64 ImageSize;
} EFI_LOADED_IMAGE_PROTOCOL;



typedef enum EFI_GRAPHICS_OUTPUT_BLT_OPERATION
{
    EfiBltVideoFill,
    EfiBltVideoToBltBuffer,
    EfiBltBufferToVideo,
    EfiBltVideoToVideo,
    EfiGraphicsOutputBltOperationMax
} EFI_GRAPHICS_OUTPUT_BLT_OPERATION;


typedef struct EFI_GRAPHICS_OUTPUT_BLT_PIXEL
{
    UINT8 Blue;
    UINT8 Green;
    UINT8 Red;
    UINT8 Reserved;
} EFI_GRAPHICS_OUTPUT_BLT_PIXEL;


typedef enum EFI_GRAPHICS_PIXEL_FORMAT
{
    PixelRedGreenBlueReserved8BitPerColor,
    PixelBlueGreenRedReserved8BitPerColor,
    PixelBitMask,
    PixelBltOnly,
    PixelFormatMax
} EFI_GRAPHICS_PIXEL_FORMAT;


typedef struct EFI_PIXEL_BITMASK
{
    UINT32 RedMask;
    UINT32 GreenMask;
    UINT32 BlueMask;
    UINT32 ReservedMask;
} EFI_PIXEL_BITMASK;


typedef struct EFI_GRAPHICS_OUTPUT_MODE_INFORMATION
{
    UINT32 Version;
    UINT32 HorizontalResolution;
    UINT32 VerticalResolution;
    EFI_GRAPHICS_PIXEL_FORMAT PixelFormat;
    EFI_PIXEL_BITMASK PixelInformation;
    UINT32 PixelsPerScanLine;
} EFI_GRAPHICS_OUTPUT_MODE_INFORMATION;


typedef struct EFI_GRAPHICS_OUTPUT_PROTOCOL_MODE
{
    UINT32 MaxMode;
    UINT32 Mode;
    EFI_GRAPHICS_OUTPUT_MODE_INFORMATION *Info;
    UINTN SizeOfInfo;
    EFI_PHYSICAL_ADDRESS FrameBufferBase;
    UINTN FrameBufferSize;
} EFI_GRAPHICS_OUTPUT_PROTOCOL_MODE;

typedef EFI_STATUS (*EFI_GRAPHICS_OUTPUT_PROTOCOL_QUERY_MODE)(struct EFI_GRAPHICS_OUTPUT_PROTOCOL *This, UINT32 ModeNumber, UINTN *SizeOfInfo, EFI_GRAPHICS_OUTPUT_MODE_INFORMATION **Info);
typedef EFI_STATUS (*EFI_GRAPHICS_OUTPUT_PROTOCOL_SET_MODE)(struct EFI_GRAPHICS_OUTPUT_PROTOCOL *This, UINT32 ModeNumber);
typedef EFI_STATUS (*EFI_GRAPHICS_OUTPUT_PROTOCOL_BLT)(struct EFI_GRAPHICS_OUTPUT_PROTOCOL *This, EFI_GRAPHICS_OUTPUT_BLT_PIXEL *BltBuffer, EFI_GRAPHICS_OUTPUT_BLT_OPERATION BltOperation, UINTN SourceX, UINTN SourceY, UINTN DestinationX, UINTN DestinationY, UINTN Width, UINTN Height, UINTN Delta);


typedef struct EFI_GRAPHICS_OUTPUT_PROTOCOL
{
    EFI_GRAPHICS_OUTPUT_PROTOCOL_QUERY_MODE QueryMode;
    EFI_GRAPHICS_OUTPUT_PROTOCOL_SET_MODE SetMode;
    EFI_GRAPHICS_OUTPUT_PROTOCOL_BLT Blt;
    EFI_GRAPHICS_OUTPUT_PROTOCOL_MODE *Mode;
} EFI_GRAPHICS_OUTPUT_PROTOCOL;
# 6 "loader/loader.c" 2
# 1 "loader/../efilibs.h" 1






# 1 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/14.1.0/include/stddef.h" 1 3 4
# 1 "C:/msys64/mingw64/include/stddef.h" 1 3 4






# 1 "C:/msys64/mingw64/include/crtdefs.h" 1 3 4
# 10 "C:/msys64/mingw64/include/crtdefs.h" 3 4
# 1 "C:/msys64/mingw64/include/corecrt.h" 1 3 4
# 10 "C:/msys64/mingw64/include/corecrt.h" 3 4
# 1 "C:/msys64/mingw64/include/_mingw.h" 1 3 4
# 10 "C:/msys64/mingw64/include/_mingw.h" 3 4
# 1 "C:/msys64/mingw64/include/_mingw_mac.h" 1 3 4
# 98 "C:/msys64/mingw64/include/_mingw_mac.h" 3 4
             
# 107 "C:/msys64/mingw64/include/_mingw_mac.h" 3 4
             
# 316 "C:/msys64/mingw64/include/_mingw_mac.h" 3 4
       
# 395 "C:/msys64/mingw64/include/_mingw_mac.h" 3 4
       
# 11 "C:/msys64/mingw64/include/_mingw.h" 2 3 4
# 1 "C:/msys64/mingw64/include/_mingw_secapi.h" 1 3 4
# 12 "C:/msys64/mingw64/include/_mingw.h" 2 3 4
# 282 "C:/msys64/mingw64/include/_mingw.h" 3 4
# 1 "C:/msys64/mingw64/include/vadefs.h" 1 3 4
# 9 "C:/msys64/mingw64/include/vadefs.h" 3 4
# 1 "C:/msys64/mingw64/include/_mingw.h" 1 3 4
# 661 "C:/msys64/mingw64/include/_mingw.h" 3 4
# 1 "C:/msys64/mingw64/include/sdks/_mingw_ddk.h" 1 3 4
# 662 "C:/msys64/mingw64/include/_mingw.h" 2 3 4
# 10 "C:/msys64/mingw64/include/vadefs.h" 2 3 4




#pragma pack(push,_CRT_PACKING)
# 24 "C:/msys64/mingw64/include/vadefs.h" 3 4
  
# 24 "C:/msys64/mingw64/include/vadefs.h" 3 4
 typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 103 "C:/msys64/mingw64/include/vadefs.h" 3 4
#pragma pack(pop)
# 283 "C:/msys64/mingw64/include/_mingw.h" 2 3 4
# 580 "C:/msys64/mingw64/include/_mingw.h" 3 4
void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{

  __asm__ __volatile__("int {$}3":);







}
# 601 "C:/msys64/mingw64/include/_mingw.h" 3 4
void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) __fastfail(unsigned int code);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) __fastfail(unsigned int code)
{

  __asm__ __volatile__("int {$}0x29"::"c"(code));
# 615 "C:/msys64/mingw64/include/_mingw.h" 3 4
  __builtin_unreachable();
}
# 641 "C:/msys64/mingw64/include/_mingw.h" 3 4
const char *__mingw_get_crt_info (void);
# 11 "C:/msys64/mingw64/include/corecrt.h" 2 3 4




#pragma pack(push,_CRT_PACKING)
# 35 "C:/msys64/mingw64/include/corecrt.h" 3 4
__extension__ typedef unsigned long long size_t;
# 45 "C:/msys64/mingw64/include/corecrt.h" 3 4
__extension__ typedef long long ssize_t;






typedef size_t rsize_t;
# 62 "C:/msys64/mingw64/include/corecrt.h" 3 4
__extension__ typedef long long intptr_t;
# 75 "C:/msys64/mingw64/include/corecrt.h" 3 4
__extension__ typedef unsigned long long uintptr_t;
# 88 "C:/msys64/mingw64/include/corecrt.h" 3 4
__extension__ typedef long long ptrdiff_t;
# 98 "C:/msys64/mingw64/include/corecrt.h" 3 4
typedef unsigned short wchar_t;







typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;
# 138 "C:/msys64/mingw64/include/corecrt.h" 3 4
typedef __time64_t time_t;
# 430 "C:/msys64/mingw64/include/corecrt.h" 3 4
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {





  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;

} threadlocinfo;
# 501 "C:/msys64/mingw64/include/corecrt.h" 3 4
#pragma pack(pop)
# 11 "C:/msys64/mingw64/include/crtdefs.h" 2 3 4
# 8 "C:/msys64/mingw64/include/stddef.h" 2 3 4
# 18 "C:/msys64/mingw64/include/stddef.h" 3 4
  __attribute__ ((__dllimport__)) extern int *__attribute__((__cdecl__)) _errno(void);

  errno_t __attribute__((__cdecl__)) _set_errno(int _Value);
  errno_t __attribute__((__cdecl__)) _get_errno(int *_Value);


  __attribute__ ((__dllimport__)) extern unsigned long __attribute__((__cdecl__)) __threadid(void);

  __attribute__ ((__dllimport__)) extern uintptr_t __attribute__((__cdecl__)) __threadhandle(void);
# 424 "C:/msys64/mingw64/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 2 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/14.1.0/include/stddef.h" 2 3 4
# 8 "loader/../efilibs.h" 2





# 12 "loader/../efilibs.h"
EFI_HANDLE ImageHandle;
EFI_SYSTEM_TABLE* SystemTable;
EFI_GRAPHICS_OUTPUT_PROTOCOL* gop;
EFI_SIMPLE_FILE_SYSTEM_PROTOCOL *Volume;
EFI_FILE_PROTOCOL* RootFS;

void SetTextPosition(UINT32 Col, UINT32 Row)
{
    SystemTable->ConOut->SetCursorPosition(SystemTable->ConOut, Col, Row);
}

void ResetScreen()
{
    SystemTable->ConOut->Reset(SystemTable->ConOut, 1);
}

void ClearScreen()
{
    SystemTable->ConOut->ClearScreen(SystemTable->ConOut);
}

void SetColor(UINTN Attribute)
{
    SystemTable->ConOut->SetAttribute(SystemTable->ConOut, Attribute);
}

void Print(CHAR16* str)
{
    SystemTable->ConOut->OutputString(SystemTable->ConOut, str);
}

unsigned long long strlen(const char* str)
{
 const char* strCount = str;

 while (*strCount++);
 return strCount - str - 1;
}

void itoa(unsigned long int n, unsigned short int* buffer, int basenumber)
{
 unsigned long int hold;
 int i, j;
 hold = n;
 i = 0;

 do{
  hold = n % basenumber;
  buffer[i++] = (hold < 10) ? (hold + '0') : (hold + 'a' - 10);
 } while(n /= basenumber);
 buffer[i--] = 0;

 for(j = 0; j < i; j++, i--)
 {
  hold = buffer[j];
  buffer[j] = buffer[i];
  buffer[i] = hold;
 }
}

int strcmp(const char* a, const char* b)
{
 int length = strlen(a);
 for(int i = 0; i < length; i++)
 {
  if(a[i] < b[i]){return -1;}
  if(a[i] > b[i]){return 1;}
 }
 return 0;
}

typedef struct BLOCKINFO
{
    unsigned long long BaseAddress;
    unsigned long long BufferSize;
    unsigned int ScreenWidth;
    unsigned int ScreenHeight;
    unsigned int PixelsPerScanLine;
 unsigned long long LoaderFileSize;
 EFI_MEMORY_DESCRIPTOR* MMap;
 unsigned long long MMapSize;
 unsigned long long MMapDescriptorSize;
 unsigned long long* rsdp;
} __attribute__((__packed__)) BLOCKINFO;

BLOCKINFO bi;

void InitializeFILESYSTEM()
{
    EFI_LOADED_IMAGE_PROTOCOL *LoadedImage;
 EFI_DEVICE_PATH_PROTOCOL *DevicePath;

    if((SystemTable->BootServices->HandleProtocol(ImageHandle, &EFI_LOADED_IMAGE_PROTOCOL_GUID, (void**)&LoadedImage)) == 0x0000000000000000)
 {
  UINT16 GOPINFO[12];
  Print(L"Image Base: \r\n");
  itoa(*(unsigned long int*)LoadedImage->ImageBase, GOPINFO, 16);
  Print(L"0x");
     Print(GOPINFO);
  Print(L"\r\n");

  Print(L"Image Base with ampersand: \r\n");
  itoa(*(unsigned long int*)&LoadedImage->ImageBase, GOPINFO, 16);
  Print(L"0x");
     Print(GOPINFO);
  Print(L"\r\n");


  if((SystemTable->BootServices->HandleProtocol(LoadedImage->DeviceHandle, &EFI_DEVICE_PATH_PROTOCOL_GUID, (void**)&DevicePath)) == 0x0000000000000000)
  {
   if((SystemTable->BootServices->HandleProtocol(LoadedImage->DeviceHandle, &EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID, (void**)&Volume)) == 0x0000000000000000)
   {
    if((Volume->OpenVolume(Volume, &RootFS)) != 0x0000000000000000)
    {
     Print(L"Loading Root File System FAILED!\r\n");
    }
   } else {
          Print(L"Volume Handle FAILED!\r\n");
         }
  } else {
      Print(L"DevicePath FAILED!\r\n");
     }
 } else {
  Print(L"LoadedImage FAILED!\r\n");
 }
}

EFI_FILE_PROTOCOL* getFile(CHAR16* FileName)
{



    EFI_FILE_PROTOCOL* FileHandle = 
# 144 "loader/../efilibs.h" 3 4
                                   ((void *)0)
# 144 "loader/../efilibs.h"
                                       ;
    if((RootFS->Open(RootFS, &FileHandle, FileName, 0x0000000000000001 | 0x0000000000000002, 0)) == (0x8000000000000000 | 0x000000000000000E))
 {
  SetColor(0x03);
  Print(L"WARNING : Unable to find File.\r\n");
 }

    return FileHandle;
}

EFI_FILE_PROTOCOL* getDir(CHAR16* DirName)
{
    EFI_FILE_PROTOCOL* FileHandle = 
# 156 "loader/../efilibs.h" 3 4
                                   ((void *)0)
# 156 "loader/../efilibs.h"
                                       ;
    if((RootFS->Open(RootFS, &FileHandle, DirName, 0x0000000000000001 | 0x0000000000000002, 0x0000000000000010)) == (0x8000000000000000 | 0x000000000000000E))
 {
  SetColor(0x03);
  Print(L"WARNING : Unable to find Directory.\r\n");
 }

    return FileHandle;
}

void closeFile(EFI_FILE_PROTOCOL* FileHandle)
{
    if((FileHandle->Close(FileHandle)) != 0x0000000000000000)
 {
        SetColor(0x06);
        Print(L"Closing File Handle FAILED\r\n");
 }
}

void closeDir(EFI_FILE_PROTOCOL* FileHandle)
{
    if((FileHandle->Close(FileHandle)) != 0x0000000000000000)
 {
  SetColor(0x06);
  Print(L"Closing Directory Handle FAILED\r\n");
 }
}

EFI_FILE_PROTOCOL* createFile(CHAR16* FileName)
{
    EFI_FILE_PROTOCOL* FileHandle = 
# 186 "loader/../efilibs.h" 3 4
                                   ((void *)0)
# 186 "loader/../efilibs.h"
                                       ;
    if((RootFS->Open(RootFS, &FileHandle, FileName, 0x8000000000000000 | 0x0000000000000001 | 0x0000000000000002, 0)) == (0x8000000000000000 | 0x000000000000000E))
 {
  SetColor(0x03);
  Print(L"WARNING : Unable to create file. Please check your path.\r\n");
 }

    return FileHandle;
}

unsigned int ENTRY_POINT;
void* OSBuffer_Handle;

void readFile(CHAR16* FileName)
{


    EFI_FILE_PROTOCOL* FileHandle = getFile(FileName);
 Print(L"Function readFile Started\r\n");
    if(FileHandle != 
# 205 "loader/../efilibs.h" 3 4
                    ((void *)0)
# 205 "loader/../efilibs.h"
                        )
    {
  Print(L"Filehandle not null\r\n");

  UINT64* FileSize = 0;
  FileHandle->SetPosition(FileHandle, 0xFFFFFFFFFFFFFFFFULL);
  FileHandle->GetPosition(FileHandle, FileSize);
  FileHandle->SetPosition(FileHandle, 0);

  if((SystemTable->BootServices->AllocatePool(EfiLoaderData, *FileSize, (void**)&OSBuffer_Handle)) != 0x0000000000000000)
  {
   SetColor(0x06);
   Print(L"Allocating Pool FAILED\r\n");
  }

  FileHandle->SetPosition(FileHandle, 0);

        if((FileHandle->Read(FileHandle, FileSize, OSBuffer_Handle)) != 0x0000000000000000)
  {
   SetColor(0x06);
   Print(L"Reading File FAILED\r\n");
  }

  SetColor(0x0B);
  Print(L"          Dynamic File Signature\r\n");
  SetColor(0x06);
  UINT8* test1 = (UINT8*)OSBuffer_Handle;




  UINT8 p1,p2,p3,p4;
  p1 = *test1;
  test1+=1;
  p2 = *test1;
  test1+=1;
  p3 = *test1;
  test1+=1;
  p4 = *test1;

  if(p1 == 100 && p2 == 134)
  {
   Print(L"          BINARY - 8664 Signature\r\n\r\n\r\n\r\n");
   SetColor(0x0F);
   test1+=37;
   p1 = *test1;
   test1+=1;
   p2 = *test1;
   test1+=1;
   p3 = *test1;
   test1+=1;
   p4 = *test1;

    UINT16 s[2];
    itoa(p1, s, 16);
    Print(s);
    Print(L"  ");

    itoa(p2, s, 16);
    Print(s);
    Print(L"  ");

    itoa(p3, s, 16);
    Print(s);
    Print(L"  ");

    itoa(p4, s, 16);
    Print(s);
    SetColor(0x06);
    Print(L"  \r\nENTRY POINT : ");
    SetColor(0x02);

                ENTRY_POINT = (p4 << 24) | (p3 << 16) | (p2 << 8) | p1 ;

    UINT16 s2[5];
    itoa(ENTRY_POINT, s2, 10);
    Print(s2);
    Print(L"  ");
  }
  else if(p2 == 69 && p3 == 76 && p4 == 70)
  {
   Print(L"ELF - 45 4C 46 Signature\r\n");
   Print(L"Add your own code + the ELF Header file to make this work.\r\n");
  } else {
   ENTRY_POINT = 0;
   Print(L"WARNING : RAW FILE HAS BEEN LOADED - No Signature DETECTED\r\n");
  }

        closeFile(FileHandle);
     bi.LoaderFileSize = *FileSize;
    }
}

void removeDir(CHAR16* dirName)
{
 EFI_FILE_PROTOCOL* FileHandle = getDir(dirName);
 if(FileHandle != 
# 301 "loader/../efilibs.h" 3 4
                 ((void *)0)
# 301 "loader/../efilibs.h"
                     )
 {
  if((FileHandle->Delete(FileHandle)) != 0x0000000000000000)
  {
   SetColor(0x06);
      Print(L"Deleting Directory FAILED\r\n");
  }
 }
}

void makeDir(CHAR16* dirName)
{
    EFI_FILE_PROTOCOL* FileHandle = 
# 313 "loader/../efilibs.h" 3 4
                                   ((void *)0)
# 313 "loader/../efilibs.h"
                                       ;

    if((RootFS->Open(RootFS, &FileHandle, dirName, 0x8000000000000000 | 0x0000000000000001 | 0x0000000000000002, 0x0000000000000010)) != 0x0000000000000000)
 {
  SetColor(0x06);
  Print(L"Creating Directory FAILED\r\n");
 }
 closeDir(FileHandle);
}

void deleteFile(CHAR16* FileName)
{
 EFI_FILE_PROTOCOL* FileHandle = getFile(FileName);
 if(FileHandle != 
# 326 "loader/../efilibs.h" 3 4
                 ((void *)0)
# 326 "loader/../efilibs.h"
                     )
 {
  if((FileHandle->Delete(FileHandle)) != 0x0000000000000000)
  SetColor(0x06);
  Print(L"Deleting File FAILED\r\n");
 }
}

void WriteToFile(char* buf, CHAR16* FileName)
{
 UINT64 fileSize = strlen(buf);
 EFI_FILE_PROTOCOL* writefilehandle = createFile(FileName);
 if(writefilehandle != 
# 338 "loader/../efilibs.h" 3 4
                      ((void *)0)
# 338 "loader/../efilibs.h"
                          )
 {
  if((writefilehandle->Write(writefilehandle, &fileSize, buf)) != 0x0000000000000000)
  {
   SetColor(0x06);
   Print(L"Writing to File FAILED\r\n");
  }
  closeFile(writefilehandle);
 }
}

void InitializeGOP()
{


    SystemTable->BootServices->LocateProtocol(&EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID, 0, (void**)&gop);

 UINT32 NewNativeMode = 9000000;
 UINTN GOPSizeOfInfo = gop->Mode->SizeOfInfo;
 UINT32 MaxResolutionModes = gop->Mode->MaxMode;
# 377 "loader/../efilibs.h"
  SetColor(0x0C);

  Print(L"          During the testing phase we will use the default GOP.\r\n");
  bi.BaseAddress = gop->Mode->FrameBufferBase;
  bi.BufferSize = gop->Mode->FrameBufferSize;
  bi.ScreenWidth = gop->Mode->Info->HorizontalResolution;
  bi.ScreenHeight = gop->Mode->Info->VerticalResolution;
  bi.PixelsPerScanLine = gop->Mode->Info->PixelsPerScanLine;
# 408 "loader/../efilibs.h"
}

void InitializeSystem()
{
    ResetScreen();
    InitializeGOP();
 InitializeFILESYSTEM();
}
# 7 "loader/loader.c" 2
# 17 "loader/loader.c"
typedef struct GRAPHICS_COLOR_PIXEL
{
    uint8_t Blue;
    uint8_t Green;
    uint8_t Red;
    uint8_t Alpha;
} GRAPHICS_COLOR_PIXEL;
# 49 "loader/loader.c"
BLOCKINFO* biStruct __attribute__ ((section (".text")));

void CreateBufferFilledBox(uint32_t xPos, uint32_t yPos, uint32_t w, uint32_t h, uint32_t c);

void main(BLOCKINFO* bi)
{
 biStruct = bi;
 biStruct->BaseAddress = bi->BaseAddress;
 Print(L"MAIN FUNCTION CALLED\r\n");
 CreateBufferFilledBox(0, 0, 150, 150, 0xffffa500);

 while(1){__asm__ ("hlt");}
}

void CreateBufferFilledBox(uint32_t xPos, uint32_t yPos, uint32_t w, uint32_t h, uint32_t c)
{
    uint32_t x;
    uint32_t y = yPos;
    uint32_t width = xPos + w;
    uint32_t height = yPos + h;

    for(y = yPos; y <= height; y++)
    {
        for(x = xPos; x <= width; x++)
        {
            *(x + (y * biStruct->PixelsPerScanLine) + (uint32_t*)(biStruct->BaseAddress)) = c;
        }
    }
}
