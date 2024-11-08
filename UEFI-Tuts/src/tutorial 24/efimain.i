# 0 "efimain.c"
# 1 "E:\\wf\\src\\uefi\\UEFI-Tuts\\src\\tutorial 24//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "efimain.c"



# 1 "efi.h" 1






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
# 8 "efi.h" 2
# 98 "efi.h"

# 98 "efi.h"
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
# 5 "efimain.c" 2
# 1 "efilibs.h" 1
# 9 "efilibs.h"
EFI_HANDLE ImageHandle;
EFI_SYSTEM_TABLE* SystemTable;
EFI_GRAPHICS_OUTPUT_PROTOCOL* gop;
EFI_SIMPLE_FILE_SYSTEM_PROTOCOL *Volume;
EFI_FILE_PROTOCOL* RootFS;
void* OSBuffer_Handle;

unsigned long long strlen(const char* str)
{
 const char* strCount = str;

 while (*strCount++);
 return strCount - str - 1;
}

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

typedef struct BLOCKINFO
{
 int MagicNumber;
    unsigned long long* BaseAddress;
    unsigned long long BufferSize;
    unsigned int ScreenWidth;
    unsigned int ScreenHeight;
    unsigned int PixelsPerScanLine;
} BLOCKINFO;

BLOCKINFO bi;

void InitializeFILESYSTEM()
{

    EFI_LOADED_IMAGE_PROTOCOL *LoadedImage;
 EFI_DEVICE_PATH_PROTOCOL *DevicePath;

    if((SystemTable->BootServices->HandleProtocol(ImageHandle, &EFI_LOADED_IMAGE_PROTOCOL_GUID, (void**)&LoadedImage)) == 0x0000000000000000)
 {
  if((SystemTable->BootServices->HandleProtocol(LoadedImage->DeviceHandle, &EFI_DEVICE_PATH_PROTOCOL_GUID, (void**)&DevicePath)) == 0x0000000000000000)
  {
   if((SystemTable->BootServices->HandleProtocol(LoadedImage->DeviceHandle, &EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID, (void**)&Volume)) == 0x0000000000000000)
   {
    if((Volume->OpenVolume(Volume, &RootFS)) != 0x0000000000000000)
    {
     Print(L"Loading Root File System FAILED!");
    }
   } else {
          Print(L"Volume Handle FAILED!");
         }
  } else {
      Print(L"DevicePath FAILED!");
     }
 } else {
  Print(L"LoadedImage FAILED!");
 }
}

EFI_FILE_PROTOCOL* getFile(CHAR16* FileName)
{



    EFI_FILE_PROTOCOL* FileHandle = (void*)0;
    if((RootFS->Open(RootFS, &FileHandle, FileName, 0x0000000000000001 | 0x0000000000000002, 0)) == (0x8000000000000000 | 0x000000000000000E))
 {
  SetColor(0x03);
  Print(L"\r\nWARNING : Unable to find File.\r\n\r\n");
 }

    return FileHandle;
}

EFI_FILE_PROTOCOL* getDir(CHAR16* DirName)
{
    EFI_FILE_PROTOCOL* FileHandle = (void*)0;
    if((RootFS->Open(RootFS, &FileHandle, DirName, 0x0000000000000001 | 0x0000000000000002, 0x0000000000000010)) == (0x8000000000000000 | 0x000000000000000E))
 {
  SetColor(0x03);
  Print(L"\r\nWARNING : Unable to find Directory.\r\n\r\n");
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
    EFI_FILE_PROTOCOL* FileHandle = (void*)0;
    if((RootFS->Open(RootFS, &FileHandle, FileName, 0x8000000000000000 | 0x0000000000000001 | 0x0000000000000002, 0)) == (0x8000000000000000 | 0x000000000000000E))
 {
  SetColor(0x03);
  Print(L"\r\nWARNING : Unable to create file. Please check your path.\r\n\r\n");
 }

    return FileHandle;
}

UINTN* GetFileSize (EFI_FILE_PROTOCOL* FileName)
{
    UINTN* Size = 0;
    FileName->SetPosition(FileName, 0xFFFFFFFFFFFFFFFFULL);
    FileName->GetPosition(FileName, Size);
 FileName->SetPosition(FileName, 0);
    return Size;
}

void readFile(CHAR16* FileName)
{


    EFI_FILE_PROTOCOL* FileHandle = getFile(FileName);
    if(FileHandle != (void*)0)
    {
  UINT64* FileSize = (UINT64*)GetFileSize(FileHandle);
  if((SystemTable->BootServices->AllocatePool(EfiLoaderData, *FileSize, (void**)&OSBuffer_Handle)) != 0x0000000000000000)
  {
   SetColor(0x06);
   Print(L"Allocating Pool FAILED\r\n");
  }

        if((FileHandle->Read(FileHandle, FileSize, OSBuffer_Handle)) != 0x0000000000000000)
  {
   SetColor(0x06);
   Print(L"Reading File FAILED\r\n");
  }

        closeFile(FileHandle);
    }
}

void removeDir(CHAR16* dirName)
{
 EFI_FILE_PROTOCOL* FileHandle = getDir(dirName);
 if(FileHandle != (void*)0)
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
    EFI_FILE_PROTOCOL* FileHandle = (void*)0;

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
 if(FileHandle != (void*)0)
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
 if(writefilehandle != (void*)0)
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

 bi.MagicNumber = 31337;
    bi.BaseAddress = (void*)gop->Mode->FrameBufferBase;
    bi.BufferSize = gop->Mode->FrameBufferSize;
    bi.ScreenWidth = gop->Mode->Info->HorizontalResolution;
    bi.ScreenHeight = gop->Mode->Info->VerticalResolution;
    bi.PixelsPerScanLine = gop->Mode->Info->PixelsPerScanLine;
}

void InitializeSystem()
{
    ResetScreen();
    InitializeGOP();
 InitializeFILESYSTEM();
}
# 6 "efimain.c" 2

EFI_STATUS efi_main(EFI_HANDLE IH, EFI_SYSTEM_TABLE *ST)
{
    ImageHandle = IH;
    SystemTable = ST;

 InitializeSystem();

 SetColor(0x0F);

 SetTextPosition(10, 1);
    Print(L"Loading ThatOS64 ...\r\n\r\n");

 readFile(u"ThatOS64\\loader.bin");


 UINT8* loader = (UINT8*)OSBuffer_Handle;



    UINTN MemoryMapSize = 0;
    EFI_MEMORY_DESCRIPTOR *MemoryMap;
    UINTN MapKey;
    UINTN DescriptorSize;
    UINT32 DescriptorVersion;

    SystemTable->BootServices->GetMemoryMap(&MemoryMapSize, MemoryMap, &MapKey, &DescriptorSize, &DescriptorVersion);
    MemoryMapSize += 2 * DescriptorSize;
    SystemTable->BootServices->AllocatePool(2, MemoryMapSize, (void **)&MemoryMap);
    SystemTable->BootServices->GetMemoryMap(&MemoryMapSize, MemoryMap, &MapKey, &DescriptorSize, &DescriptorVersion);
    SystemTable->BootServices->ExitBootServices(ImageHandle, MapKey);

    void (*KernelBinFile)(int, BLOCKINFO*) = ((__attribute__((ms_abi)) void (*)(int, BLOCKINFO*) ) &loader[262]);

    KernelBinFile(0, &bi);


    return 0x0000000000000000;
}
