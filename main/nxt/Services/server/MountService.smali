.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$MountServiceBinderListener;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$ShutdownCallBack;,
        Lcom/android/server/MountService$UmsEnableCallBack;,
        Lcom/android/server/MountService$UnmountCallBack;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$CDRomState;,
        Lcom/android/server/MountService$VolumeState;
    }
.end annotation


# static fields
.field private static final BOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field private static final DEBUG_EVENTS:Z = true

.field private static final DEBUG_OBB:Z = false

.field private static final DEBUG_UNMOUNT:Z = true

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final EXTERNAL_OTG:Ljava/lang/String;

.field private static final EXTERNAL_SD1:Ljava/lang/String;

.field private static final EXTERNAL_SD2:Ljava/lang/String; = "/storage/sdcard1"

.field private static final FIRST_BOOT_MOUNTED:Ljava/lang/String; = "first_boot_mounted"

.field private static final FORMAT_WIPE:Z = true

.field private static final H_SYSTEM_READY:I = 0x4

.field private static final H_UNMOUNT_MS:I = 0x3

.field private static final H_UNMOUNT_PM_DONE:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE:I = 0x1

.field private static final INSERT_OTG:Ljava/lang/String; = "insert_otg"

.field private static final INTENT_SD_SWAP:Ljava/lang/String; = "com.mediatek.SD_SWAP"

.field private static final LABEL_SD1:Ljava/lang/String; = "sdcard0"

.field private static final LABEL_SD2:Ljava/lang/String; = "sdcard1"

.field private static final LABLE_OTG:Ljava/lang/String; = "usbotg"

.field private static final LABLE_SD:Ljava/lang/String; = "sdcard"

.field private static final LOCAL_LOGD:Z = true

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MAX_FILE_SIZE:J = 0xffffffffL

.field private static final MAX_UNMOUNT_RETRIES:I = 0x4

.field private static final MEDIA_EJECT_SHUTDOWN_TIME:I = 0x1f4

.field private static final MEDIA_EJECT_TIME:I = 0x5dc

.field private static final MOUNT_UNMOUNT_ALL:Ljava/lang/String; = "mount_unmount_all"

.field private static final MTP_RESERVE_SPACE:I = 0xa

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final OMADM_SD_FORMAT:Ljava/lang/String; = "com.mediatek.dm.LAWMO_WIPE"

.field private static final OMADM_SYNC_LOCK:Ljava/lang/Object;

.field private static final OMADM_USB_DISABLE:Ljava/lang/String; = "com.mediatek.dm.LAWMO_LOCK"

.field private static final OMADM_USB_ENABLE:Ljava/lang/String; = "com.mediatek.dm.LAWMO_UNLOCK"

.field private static final OTG_EVENT605_LENGTH:I = 0xd

.field private static final OTG_EVENT632_LENGTH:I = 0x7

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final PRIVACY_PROTECTION_LOCK:Ljava/lang/String; = "com.mediatek.ppl.NOTIFY_LOCK"

.field private static final PRIVACY_PROTECTION_UNLOCK:Ljava/lang/String; = "com.mediatek.ppl.NOTIFY_UNLOCK"

.field private static final PRIVACY_PROTECTION_WIPE:Ljava/lang/String; = "com.mediatek.ppl.NOTIFY_MOUNT_SERVICE_WIPE"

.field private static final PRIVACY_PROTECTION_WIPE_DONE:Ljava/lang/String; = "com.mediatek.ppl.MOUNT_SERVICE_WIPE_RESPONSE"

.field private static final PROP_SD_SWAP:Ljava/lang/String; = "vold_swap_state"

.field private static final PROP_SD_SWAP_FALSE:Ljava/lang/String; = "0"

.field private static final PROP_SD_SWAP_TRUE:Ljava/lang/String; = "1"

.field private static final PROP_SWAPPING:Ljava/lang/String; = "sys.sd.swapping"

.field private static final RETRY_UNMOUNT_DELAY:I = 0x1e

.field private static final SD_EXIST:Ljava/lang/String; = "SD_EXIST"

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE:Ljava/lang/String; = "storage"

.field private static final TAG_STORAGE_LIST:Ljava/lang/String; = "StorageList"

.field private static final TURNONUSB_SYNC_LOCK:Ljava/lang/Object;

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z


# instance fields
.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private mBootCompleted:Z

.field private final mBootIPOReceiver:Landroid/content/BroadcastReceiver;

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContext:Landroid/content/Context;

.field private final mDMReceiver:Landroid/content/BroadcastReceiver;

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field private mEmulatedTemplate:Landroid/os/storage/StorageVolume;

.field private mFirstTimeSDSwapIntent:Z

.field private mFirstTime_SwapStateForSDSwapMountPoint:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIdleMaintenanceReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAnyAllowUMS:Z

.field private mIsTurnOnOffUsb:Z

.field private mIsUsbConnected:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMountAll:Z

.field private mMountSwap:Z

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mOldUserId:I

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private final mPrivacyProtectionReceiver:Landroid/content/BroadcastReceiver;

.field private mSD1BootMounted:Z

.field private mSD2BootMounted:Z

.field private mSendUmsConnectedOnBoot:Z

.field private mSetDefaultEnable:Z

.field private mShutdownCount:I

.field private mShutdownRet:I

.field private mShutdownSD:Z

.field private mSwapStateForSDSwapIntent:Z

.field private mSwapStateForSDSwapMountPoint:Z

.field private volatile mSystemReady:Z

.field private mUMSCount:I

.field private mUmountSdByUserSwitch:Z

.field private mUmsAvailable:Z

.field private mUmsEnabling:Z

.field private mUnmountPrimary:Z

.field private mUnmountSwap:Z

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private mUserId:I

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumePrimary:Landroid/os/storage/StorageVolume;

.field private mVolumeSecondary:Landroid/os/storage/StorageVolume;

.field private final mVolumeStates:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumes:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumesByPath:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 258
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    .line 261
    sget-object v0, Landroid/os/Environment;->DIRECTORY_USBOTG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;

    .line 272
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/MountService;->TURNONUSB_SYNC_LOCK:Ljava/lang/Object;

    .line 308
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;

    .line 424
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2501
    invoke-direct/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 230
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    .line 237
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    .line 240
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    .line 243
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    .line 246
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSystemReady:Z

    .line 250
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    .line 254
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 255
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 256
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 270
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mIsAnyAllowUMS:Z

    .line 271
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 277
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mBootCompleted:Z

    .line 278
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mShutdownSD:Z

    .line 279
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/MountService;->mShutdownRet:I

    .line 280
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    .line 281
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    .line 283
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    .line 284
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    .line 285
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/MountService;->mUMSCount:I

    .line 286
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 287
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 288
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    .line 296
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mMountSwap:Z

    .line 297
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mUnmountSwap:Z

    .line 300
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mFirstTimeSDSwapIntent:Z

    .line 301
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSwapStateForSDSwapIntent:Z

    .line 302
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSwapStateForSDSwapMountPoint:Z

    .line 303
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mFirstTime_SwapStateForSDSwapMountPoint:Z

    .line 318
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/MountService;->mOldUserId:I

    .line 319
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/MountService;->mUserId:I

    .line 327
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    .line 345
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    .line 348
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    .line 427
    new-instance v2, Lcom/android/server/MountService$DefaultContainerConnection;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 444
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 907
    new-instance v2, Lcom/android/server/MountService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 946
    new-instance v2, Lcom/android/server/MountService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 957
    new-instance v2, Lcom/android/server/MountService$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$4;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mIdleMaintenanceReceiver:Landroid/content/BroadcastReceiver;

    .line 979
    new-instance v2, Lcom/android/server/MountService$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$5;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mDMReceiver:Landroid/content/BroadcastReceiver;

    .line 1059
    new-instance v2, Lcom/android/server/MountService$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$6;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mPrivacyProtectionReceiver:Landroid/content/BroadcastReceiver;

    .line 1183
    new-instance v2, Lcom/android/server/MountService$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$7;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mBootIPOReceiver:Landroid/content/BroadcastReceiver;

    .line 2502
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 2504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2505
    :try_start_131
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->readStorageListLocked()V

    .line 2506
    monitor-exit v3
    :try_end_135
    .catchall {:try_start_131 .. :try_end_135} :catchall_253

    .line 2509
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 2511
    new-instance v13, Landroid/os/HandlerThread;

    const-string v2, "MountService"

    invoke-direct {v13, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2512
    .local v13, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    .line 2513
    new-instance v2, Lcom/android/server/MountService$MountServiceHandler;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 2516
    new-instance v17, Landroid/content/IntentFilter;

    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .line 2517
    .local v17, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2518
    const-string v2, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2521
    const-string v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2527
    :try_start_18b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_193
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1bc

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/storage/StorageVolume;

    .line 2528
    .local v18, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_193

    .line 2529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2534
    .end local v18    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1bc
    monitor-exit v3
    :try_end_1bd
    .catchall {:try_start_18b .. :try_end_1bd} :catchall_256

    .line 2545
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 2546
    .local v15, "privacyProtectionFilter":Landroid/content/IntentFilter;
    const-string v2, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2547
    const-string v2, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2548
    const-string v2, "com.mediatek.ppl.NOTIFY_MOUNT_SERVICE_WIPE"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mPrivacyProtectionReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v15, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2552
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 2553
    .local v12, "bootIPOFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2554
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mBootIPOReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v12, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2558
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 2559
    .local v5, "idleMaintenanceFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mIdleMaintenanceReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2564
    new-instance v2, Lcom/android/server/MountService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 2571
    new-instance v6, Lcom/android/server/NativeDaemonConnector;

    const-string v8, "vold"

    const/16 v9, 0x1f4

    const-string v10, "VoldConnector"

    const/16 v11, 0x19

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 2573
    new-instance v16, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "VoldConnector"

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2574
    .local v16, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    .line 2580
    return-void

    .line 2506
    .end local v5    # "idleMaintenanceFilter":Landroid/content/IntentFilter;
    .end local v12    # "bootIPOFilter":Landroid/content/IntentFilter;
    .end local v13    # "hthread":Landroid/os/HandlerThread;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "privacyProtectionFilter":Landroid/content/IntentFilter;
    .end local v16    # "thread":Ljava/lang/Thread;
    .end local v17    # "userFilter":Landroid/content/IntentFilter;
    :catchall_253
    move-exception v2

    :try_start_254
    monitor-exit v3
    :try_end_255
    .catchall {:try_start_254 .. :try_end_255} :catchall_253

    throw v2

    .line 2534
    .restart local v13    # "hthread":Landroid/os/HandlerThread;
    .restart local v17    # "userFilter":Landroid/content/IntentFilter;
    :catchall_256
    move-exception v2

    :try_start_257
    monitor-exit v3
    :try_end_258
    .catchall {:try_start_257 .. :try_end_258} :catchall_256

    throw v2
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/storage/StorageVolume;
    .param p3, "x3"    # Landroid/os/UserHandle;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/server/MountService;->TURNONUSB_SYNC_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/MountService;->mUMSCount:I

    return v0
.end method

.method static synthetic access$1310(Lcom/android/server/MountService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/MountService;->mUMSCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/MountService;->mUMSCount:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/MountService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/MountService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/MountService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/MountService;->mShutdownRet:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/MountService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/android/server/MountService;->mShutdownRet:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/MountService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/MountService;->mShutdownCount:I

    return v0
.end method

.method static synthetic access$1710(Lcom/android/server/MountService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/MountService;->mShutdownCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/MountService;->mShutdownCount:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/MountService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    return p1
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/MountService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/MountService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/MountService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/MountService;->handleSystemReady()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/MountService;Landroid/os/UserHandle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeVolumeLocked(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/server/MountService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/android/server/MountService;->mOldUserId:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/MountService;->mUserId:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/MountService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/android/server/MountService;->mUserId:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/MountService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$3100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/MountService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->enableUSBFuction(Z)V

    return-void
.end method

.method static synthetic access$3300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/MountService;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/MountService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/server/MountService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/android/server/MountService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/MountService;->mFirstTime_SwapStateForSDSwapMountPoint:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/MountService;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/MountService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/MountService;->enableDefaultPathDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/MountService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/MountService;->doGetCDRomState()I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/MountService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doShareUnshareCDRom(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/MountService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/MountService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/MountService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/MountService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/storage/StorageVolume;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 9
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3673
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3674
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3676
    .local v4, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_26

    .line 3677
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3678
    .restart local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3688
    :cond_18
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3690
    :try_start_1b
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_48

    .line 3705
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3706
    return-void

    .line 3680
    :cond_26
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 3681
    .local v3, "o":Lcom/android/server/MountService$ObbState;
    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 3682
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3691
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "o":Lcom/android/server/MountService$ObbState;
    :catch_48
    move-exception v1

    .line 3696
    .local v1, "e":Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3697
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 3698
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3702
    :cond_57
    throw v1
.end method

.method private addVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .registers 6
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 2468
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVolumeLocked() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2470
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 2471
    .local v0, "existing":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_51

    .line 2472
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volume at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    :cond_51
    return-void
.end method

.method public static buildObbPath(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 4
    .param p0, "canonicalPath"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "forVold"    # Z

    .prologue
    .line 4135
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4136
    :cond_6
    return-object p0
.end method

.method private createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    .registers 8
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 2448
    iget-object v3, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_c

    .line 2449
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Missing emulated volume multi-user template"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2452
    :cond_c
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 2453
    .local v1, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2454
    .local v0, "path":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    invoke-static {v3, v0, p1}, Landroid/os/storage/StorageVolume;->fromTemplate(Landroid/os/storage/StorageVolume;Ljava/io/File;Landroid/os/UserHandle;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 2455
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 2456
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 2458
    iget-boolean v3, p0, Lcom/android/server/MountService;->mSystemReady:Z

    if-eqz v3, :cond_30

    .line 2459
    const-string v3, "mounted"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 2465
    :goto_2f
    return-void

    .line 2462
    :cond_30
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2463
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method private doFormatVolume(Ljava/lang/String;)I
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2176
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "format"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string v7, "wipe"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_18
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_18} :catch_19

    .line 2188
    :goto_18
    return v2

    .line 2181
    :catch_19
    move-exception v1

    .line 2182
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2183
    .local v0, "code":I
    const/16 v2, 0x191

    if-ne v0, v2, :cond_24

    .line 2184
    const/4 v2, -0x2

    goto :goto_18

    .line 2185
    :cond_24
    const/16 v2, 0x193

    if-ne v0, v2, :cond_2a

    .line 2186
    const/4 v2, -0x4

    goto :goto_18

    .line 2188
    :cond_2a
    const/4 v2, -0x1

    goto :goto_18
.end method

.method private doGetCDRomState()I
    .registers 16

    .prologue
    const/4 v9, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 4296
    :try_start_4
    iget-object v10, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v11, "cd-rom"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "status"

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_13
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_13} :catch_29

    move-result-object v1

    .line 4302
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v4

    .line 4303
    .local v4, "rawEvent":Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4304
    .local v5, "tok":[Ljava/lang/String;
    array-length v10, v5

    if-ge v10, v9, :cond_32

    .line 4305
    const-string v7, "MountService"

    const-string v8, "Malformed response get CD rom ststus"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4333
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v4    # "rawEvent":Ljava/lang/String;
    .end local v5    # "tok":[Ljava/lang/String;
    :goto_28
    return v6

    .line 4297
    :catch_29
    move-exception v2

    .line 4298
    .local v2, "ex":Lcom/android/server/NativeDaemonConnectorException;
    const-string v7, "MountService"

    const-string v8, "Failed to get CD rom ststus!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 4311
    .end local v2    # "ex":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v4    # "rawEvent":Ljava/lang/String;
    .restart local v5    # "tok":[Ljava/lang/String;
    :cond_32
    const/4 v10, 0x0

    :try_start_33
    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_38} :catch_49

    move-result v0

    .line 4316
    .local v0, "code":I
    const/16 v10, 0xd6

    if-ne v0, v10, :cond_8c

    .line 4317
    const-string v10, "Shared"

    aget-object v11, v5, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5c

    move v6, v7

    .line 4318
    goto :goto_28

    .line 4312
    .end local v0    # "code":I
    :catch_49
    move-exception v3

    .line 4313
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const-string v9, "MountService"

    const-string v10, "Error parsing code %s"

    new-array v8, v8, [Ljava/lang/Object;

    aget-object v11, v5, v7

    aput-object v11, v8, v7

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 4319
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v0    # "code":I
    :cond_5c
    const-string v7, "Unshared"

    aget-object v10, v5, v8

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    move v6, v8

    .line 4320
    goto :goto_28

    .line 4321
    :cond_68
    const-string v7, "Sharing"

    aget-object v10, v5, v8

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    move v6, v9

    .line 4322
    goto :goto_28

    .line 4323
    :cond_74
    const-string v7, "Unsharing"

    aget-object v9, v5, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 4324
    const/4 v6, 0x3

    goto :goto_28

    .line 4325
    :cond_80
    const-string v7, "Not_Exist"

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a0

    .line 4326
    const/4 v6, 0x4

    goto :goto_28

    .line 4329
    :cond_8c
    const-string v9, "MountService"

    const-string v10, "Unexpected response code %d"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v7

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 4332
    :cond_a0
    const-string v7, "MountService"

    const-string v8, "Got an empty response"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2196
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "shared"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_16
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_16} :catch_2a

    move-result-object v0

    .line 2202
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v3

    const/16 v4, 0xd4

    if-ne v3, v4, :cond_29

    .line 2203
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 2205
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_29
    :goto_29
    return v2

    .line 2197
    :catch_2a
    move-exception v1

    .line 2198
    .local v1, "ex":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read response to volume shared "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method private doMountVolume(Ljava/lang/String;)I
    .registers 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1995
    const/4 v4, 0x0

    .line 1998
    .local v4, "rc":I
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1999
    :try_start_4
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    .line 2000
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_5e

    .line 2002
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doMountVolume: Mouting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    :try_start_25
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v6, "volume"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "mount"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-direct {v1, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2005
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    iget-boolean v6, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-eqz v6, :cond_40

    .line 2006
    const-string v6, "swap"

    invoke-virtual {v1, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2008
    :cond_40
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doMountVolume  cmd:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_25 .. :try_end_5d} :catch_61

    .line 2049
    .end local v1    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_5d
    :goto_5d
    return v4

    .line 2000
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_5e
    move-exception v6

    :try_start_5f
    monitor-exit v7
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v6

    .line 2010
    .restart local v5    # "volume":Landroid/os/storage/StorageVolume;
    :catch_61
    move-exception v3

    .line 2014
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 2015
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    .line 2016
    .local v2, "code":I
    const/16 v6, 0x191

    if-ne v2, v6, :cond_74

    .line 2020
    const/4 v4, -0x2

    .line 2044
    :goto_6c
    if-eqz v0, :cond_5d

    .line 2045
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto :goto_5d

    .line 2021
    :cond_74
    const/16 v6, 0x192

    if-ne v2, v6, :cond_88

    .line 2022
    const-string v6, "MountService"

    const-string v7, " updating volume state :: media nofs"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    const-string v6, "nofs"

    invoke-direct {p0, v5, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 2027
    const-string v0, "android.intent.action.MEDIA_NOFS"

    .line 2028
    const/4 v4, -0x3

    goto :goto_6c

    .line 2029
    :cond_88
    const/16 v6, 0x193

    if-ne v2, v6, :cond_9c

    .line 2030
    const-string v6, "MountService"

    const-string v7, "updating volume state media corrupt"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    const-string v6, "unmountable"

    invoke-direct {p0, v5, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 2035
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 2036
    const/4 v4, -0x4

    goto :goto_6c

    .line 2038
    :cond_9c
    const/4 v4, -0x1

    goto :goto_6c
.end method

.method private doSDSwapVolumeUpdate()V
    .registers 20

    .prologue
    .line 4388
    const-string v3, "MountService"

    const-string v4, "doSDSwapVolumeUpdate"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_1b

    .line 4399
    :cond_13
    const-string v3, "MountService"

    const-string v4, "doSDSwapVolumeUpdate: mVolumePrimary == null || mVolumeSecondary == null, return!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4521
    :goto_1a
    return-void

    .line 4404
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v15

    .line 4406
    .local v15, "sdSwapStatus":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/MountService;->mFirstTime_SwapStateForSDSwapMountPoint:Z

    if-nez v3, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/MountService;->mSwapStateForSDSwapMountPoint:Z

    if-eq v15, v3, :cond_202

    .line 4407
    :cond_2b
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/MountService;->mSwapStateForSDSwapMountPoint:Z

    .line 4408
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/MountService;->mFirstTime_SwapStateForSDSwapMountPoint:Z

    .line 4418
    if-eqz v15, :cond_223

    .line 4420
    const-string v3, "MountService"

    const-string v4, "doSDSwapVolumeUpdate: SD swap!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 4422
    :try_start_44
    new-instance v1, Landroid/os/storage/StorageVolume;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getDescriptionId()I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getMtpReserveSpace()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 4433
    .local v1, "pVolume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/storage/StorageVolume;

    .line 4434
    .local v16, "tempVolume":Landroid/os/storage/StorageVolume;
    if-eqz v16, :cond_b3

    .line 4435
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/storage/StorageVolume;->setUuid(Ljava/lang/String;)V

    .line 4436
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getUserLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/storage/StorageVolume;->setUserLabel(Ljava/lang/String;)V

    .line 4437
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 4440
    :cond_b3
    new-instance v2, Landroid/os/storage/StorageVolume;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getDescriptionId()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getMtpReserveSpace()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v12

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 4451
    .local v2, "tVolume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "tempVolume":Landroid/os/storage/StorageVolume;
    check-cast v16, Landroid/os/storage/StorageVolume;

    .line 4452
    .restart local v16    # "tempVolume":Landroid/os/storage/StorageVolume;
    if-eqz v16, :cond_122

    .line 4453
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setUuid(Ljava/lang/String;)V

    .line 4454
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getUserLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setUserLabel(Ljava/lang/String;)V

    .line 4455
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 4458
    :cond_122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    const-string v4, "/storage/sdcard1"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 4462
    .local v14, "length":I
    if-lez v14, :cond_166

    .line 4463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4464
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_147
    if-ge v13, v14, :cond_166

    .line 4465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/storage/sdcard1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21c

    .line 4466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v13, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4471
    .end local v13    # "i":I
    :cond_166
    monitor-exit v18
    :try_end_167
    .catchall {:try_start_44 .. :try_end_167} :catchall_220

    .line 4505
    .end local v1    # "pVolume":Landroid/os/storage/StorageVolume;
    .end local v2    # "tVolume":Landroid/os/storage/StorageVolume;
    :goto_167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4506
    :try_start_16c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 4507
    const/16 v17, 0x0

    .line 4508
    .local v17, "volume":Landroid/os/storage/StorageVolume;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_177
    if-ge v13, v14, :cond_2f6

    .line 4509
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "volume":Landroid/os/storage/StorageVolume;
    check-cast v17, Landroid/os/storage/StorageVolume;

    .line 4510
    .restart local v17    # "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 4511
    const-string v3, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSDSwapVolumeUpdate  path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " description: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " removable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " emulated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mtpReserve: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getMtpReserveSpace()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " allowMassStorage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " maxFileSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fe
    .catchall {:try_start_16c .. :try_end_1fe} :catchall_2f9

    .line 4508
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_177

    .line 4411
    .end local v13    # "i":I
    .end local v14    # "length":I
    .end local v16    # "tempVolume":Landroid/os/storage/StorageVolume;
    .end local v17    # "volume":Landroid/os/storage/StorageVolume;
    :cond_202
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doSDSwapVolumeUpdate: already update the mount point path, Just skip this. status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 4464
    .restart local v1    # "pVolume":Landroid/os/storage/StorageVolume;
    .restart local v2    # "tVolume":Landroid/os/storage/StorageVolume;
    .restart local v13    # "i":I
    .restart local v14    # "length":I
    .restart local v16    # "tempVolume":Landroid/os/storage/StorageVolume;
    :cond_21c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_147

    .line 4471
    .end local v1    # "pVolume":Landroid/os/storage/StorageVolume;
    .end local v2    # "tVolume":Landroid/os/storage/StorageVolume;
    .end local v13    # "i":I
    .end local v14    # "length":I
    .end local v16    # "tempVolume":Landroid/os/storage/StorageVolume;
    :catchall_220
    move-exception v3

    :try_start_221
    monitor-exit v18
    :try_end_222
    .catchall {:try_start_221 .. :try_end_222} :catchall_220

    throw v3

    .line 4474
    :cond_223
    const-string v3, "MountService"

    const-string v4, "doSDSwapVolumeUpdate: SD NOT swap!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4477
    :try_start_22f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/storage/StorageVolume;

    .line 4478
    .restart local v16    # "tempVolume":Landroid/os/storage/StorageVolume;
    if-eqz v16, :cond_264

    .line 4479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/storage/StorageVolume;->setUuid(Ljava/lang/String;)V

    .line 4480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getUserLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/storage/StorageVolume;->setUserLabel(Ljava/lang/String;)V

    .line 4481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 4483
    :cond_264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "tempVolume":Landroid/os/storage/StorageVolume;
    check-cast v16, Landroid/os/storage/StorageVolume;

    .line 4484
    .restart local v16    # "tempVolume":Landroid/os/storage/StorageVolume;
    if-eqz v16, :cond_299

    .line 4485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/storage/StorageVolume;->setUuid(Ljava/lang/String;)V

    .line 4486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getUserLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/storage/StorageVolume;->setUserLabel(Ljava/lang/String;)V

    .line 4487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 4489
    :cond_299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    const-string v5, "/storage/sdcard1"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 4493
    .restart local v14    # "length":I
    if-lez v14, :cond_2ed

    .line 4494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4495
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2ca
    if-ge v13, v14, :cond_2ed

    .line 4496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "/storage/sdcard1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f3

    .line 4497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3, v13, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4502
    .end local v13    # "i":I
    :cond_2ed
    monitor-exit v4

    goto/16 :goto_167

    .end local v14    # "length":I
    .end local v16    # "tempVolume":Landroid/os/storage/StorageVolume;
    :catchall_2f0
    move-exception v3

    monitor-exit v4
    :try_end_2f2
    .catchall {:try_start_22f .. :try_end_2f2} :catchall_2f0

    throw v3

    .line 4495
    .restart local v13    # "i":I
    .restart local v14    # "length":I
    .restart local v16    # "tempVolume":Landroid/os/storage/StorageVolume;
    :cond_2f3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2ca

    .line 4520
    .restart local v17    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2f6
    :try_start_2f6
    monitor-exit v4

    goto/16 :goto_1a

    .end local v13    # "i":I
    .end local v17    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_2f9
    move-exception v3

    monitor-exit v4
    :try_end_2fb
    .catchall {:try_start_2f6 .. :try_end_2fb} :catchall_2f9

    throw v3
.end method

.method private doShareSDVolumeUpdate()V
    .registers 1

    .prologue
    .line 4370
    return-void
.end method

.method private doShareUnshareCDRom(Z)V
    .registers 8
    .param p1, "share"    # Z

    .prologue
    .line 4282
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doShareUnshareCDRom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4284
    :try_start_18
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cd-rom"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p1, :cond_2a

    const-string v1, "share"

    :goto_24
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 4288
    :goto_29
    return-void

    .line 4284
    :cond_2a
    const-string v1, "unshare"
    :try_end_2c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_18 .. :try_end_2c} :catch_2d

    goto :goto_24

    .line 4285
    :catch_2d
    move-exception v0

    .line 4286
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    const-string v2, "Failed to share/unshare CD Rom"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method private doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1284
    const-string v1, "ums"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1285
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Method %s not supported"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1289
    :cond_1a
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "volume"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p3, :cond_32

    const-string v1, "share"

    :goto_26
    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v1, 0x2

    aput-object p2, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1293
    :goto_31
    return-void

    .line 1289
    :cond_32
    const-string v1, "unshare"
    :try_end_34
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_34} :catch_35

    goto :goto_26

    .line 1290
    :catch_35
    move-exception v0

    .line 1291
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    const-string v2, "Failed to share/unshare"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method private doUnmountVolume(Ljava/lang/String;ZZ)I
    .registers 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/16 v3, 0x194

    const/4 v4, 0x0

    .line 2064
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 2115
    :goto_f
    return v3

    .line 2074
    :cond_10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 2075
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 2079
    sget-object v5, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 2080
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v4, v4}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 2084
    :cond_27
    :try_start_27
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v5, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "unmount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2085
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p3, :cond_63

    .line 2086
    iget-boolean v5, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-eqz v5, :cond_54

    .line 2087
    const-string v5, "force_and_revert_and_swap"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2100
    :goto_44
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;

    .line 2102
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_4c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_27 .. :try_end_4c} :catch_5a

    .line 2103
    :try_start_4c
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 2104
    monitor-exit v5
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_7b

    move v3, v4

    .line 2105
    goto :goto_f

    .line 2089
    :cond_54
    :try_start_54
    const-string v5, "force_and_revert"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_59
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_54 .. :try_end_59} :catch_5a

    goto :goto_44

    .line 2106
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_5a
    move-exception v2

    .line 2109
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2110
    .local v1, "code":I
    if-ne v1, v3, :cond_7e

    .line 2111
    const/4 v3, -0x5

    goto :goto_f

    .line 2091
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_63
    if-eqz p2, :cond_75

    .line 2092
    :try_start_65
    iget-boolean v5, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-eqz v5, :cond_6f

    .line 2093
    const-string v5, "force_and_swap"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_44

    .line 2095
    :cond_6f
    const-string v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_44

    .line 2098
    :cond_75
    const-string v5, "swap"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_7a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_65 .. :try_end_7a} :catch_5a

    goto :goto_44

    .line 2104
    :catchall_7b
    move-exception v4

    :try_start_7c
    monitor-exit v5
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    :try_start_7d
    throw v4
    :try_end_7e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_7d .. :try_end_7e} :catch_5a

    .line 2112
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v1    # "code":I
    .restart local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_7e
    const/16 v3, 0x195

    if-ne v1, v3, :cond_84

    .line 2113
    const/4 v3, -0x7

    goto :goto_f

    .line 2115
    :cond_84
    const/4 v3, -0x1

    goto :goto_f
.end method

.method private doUnmountVolumeForUserSwitch(Ljava/lang/String;ZZ)I
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2128
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2129
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 2133
    sget-object v4, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2134
    iget-object v4, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v3, v3}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 2138
    :cond_18
    :try_start_18
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "volume"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "unmount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2139
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p3, :cond_55

    .line 2140
    iget-boolean v4, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-eqz v4, :cond_44

    .line 2141
    const-string v4, "force_and_revert_and_swap"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2154
    :goto_35
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;

    .line 2156
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4
    :try_end_3d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_18 .. :try_end_3d} :catch_4a

    .line 2157
    :try_start_3d
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 2158
    monitor-exit v4
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_6d

    .line 2169
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_43
    return v3

    .line 2143
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_44
    :try_start_44
    const-string v4, "force_and_revert"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_49
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_44 .. :try_end_49} :catch_4a

    goto :goto_35

    .line 2160
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_4a
    move-exception v2

    .line 2163
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2164
    .local v1, "code":I
    const/16 v3, 0x194

    if-ne v1, v3, :cond_70

    .line 2165
    const/4 v3, -0x5

    goto :goto_43

    .line 2145
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_55
    if-eqz p2, :cond_67

    .line 2146
    :try_start_57
    iget-boolean v4, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-eqz v4, :cond_61

    .line 2147
    const-string v4, "force_and_swap"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_35

    .line 2149
    :cond_61
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_35

    .line 2152
    :cond_67
    const-string v4, "swap"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_6c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_57 .. :try_end_6c} :catch_4a

    goto :goto_35

    .line 2158
    :catchall_6d
    move-exception v3

    :try_start_6e
    monitor-exit v4
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v3
    :try_end_70
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6f .. :try_end_70} :catch_4a

    .line 2166
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v1    # "code":I
    .restart local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_70
    const/16 v3, 0x195

    if-ne v1, v3, :cond_76

    .line 2167
    const/4 v3, -0x7

    goto :goto_43

    .line 2169
    :cond_76
    const/4 v3, -0x1

    goto :goto_43
.end method

.method private enableDefaultPathDialog()Z
    .registers 10

    .prologue
    const/4 v4, 0x1

    .line 4681
    const/4 v2, 0x0

    .line 4682
    .local v2, "mountCount":I
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4683
    :try_start_5
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4684
    .local v1, "iter":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 4685
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4686
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4687
    .local v3, "state":Ljava/lang/String;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableDefaultPathDialog state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4688
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 4689
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 4692
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "state":Ljava/lang/String;
    :cond_44
    monitor-exit v5

    .line 4693
    if-le v2, v4, :cond_4b

    :goto_47
    return v4

    .line 4692
    .end local v1    # "iter":Ljava/util/Iterator;
    :catchall_48
    move-exception v4

    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_48

    throw v4

    .line 4693
    .restart local v1    # "iter":Ljava/util/Iterator;
    :cond_4b
    const/4 v4, 0x0

    goto :goto_47
.end method

.method private enableDefaultToast()Z
    .registers 6

    .prologue
    .line 4701
    const/4 v1, 0x0

    .line 4702
    .local v1, "internal":Z
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4703
    :try_start_4
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 4704
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-nez v3, :cond_a

    .line 4705
    const/4 v1, 0x1

    .line 4709
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1d
    monitor-exit v4

    .line 4710
    return v1

    .line 4709
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method private enableUSBFuction(Z)V
    .registers 9
    .param p1, "enable"    # Z

    .prologue
    .line 4269
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 4271
    :try_start_3
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "USB"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz p1, :cond_15

    const-string v2, "enable"

    :goto_f
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 4276
    :goto_14
    return-void

    .line 4271
    :cond_15
    const-string v2, "disable"
    :try_end_17
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_17} :catch_18

    goto :goto_f

    .line 4272
    :catch_18
    move-exception v1

    .line 4273
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 4274
    .local v0, "code":I
    const-string v2, "MountService"

    const-string v3, "enableUSBFunction failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private getDefaultPath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4660
    const-class v1, Lcom/mediatek/common/storage/IStorageManagerEx;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/storage/IStorageManagerEx;

    .line 4661
    .local v0, "sm":Lcom/mediatek/common/storage/IStorageManagerEx;
    invoke-interface {v0}, Lcom/mediatek/common/storage/IStorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    .registers 5

    .prologue
    .line 2486
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2487
    :try_start_3
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 2488
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2489
    monitor-exit v3

    .line 2493
    .end local v1    # "volume":Landroid/os/storage/StorageVolume;
    :goto_22
    return-object v1

    .line 2492
    :cond_23
    monitor-exit v3

    .line 2493
    const/4 v1, 0x0

    goto :goto_22

    .line 2492
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v2
.end method

.method private getSwapState()Z
    .registers 4

    .prologue
    .line 4671
    const-class v1, Lcom/mediatek/common/storage/IStorageManagerEx;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/storage/IStorageManagerEx;

    .line 4672
    .local v0, "sm":Lcom/mediatek/common/storage/IStorageManagerEx;
    invoke-interface {v0}, Lcom/mediatek/common/storage/IStorageManagerEx;->getSdSwapState()Z

    move-result v1

    return v1
.end method

.method private getUMSPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4380
    sget-object v0, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    return-object v0
.end method

.method private getUmsEnabling()Z
    .registers 3

    .prologue
    .line 2726
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2727
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    monitor-exit v1

    return v0

    .line 2728
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private handleSystemReady()V
    .registers 19

    .prologue
    .line 814
    const-string v13, "MountService"

    const-string v14, "handleSystemReady"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 817
    :try_start_c
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-direct {v9, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 818
    .local v9, "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v14
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_40

    .line 819
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 828
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 829
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    .line 830
    .local v1, "count":I
    new-array v13, v1, [Ljava/lang/String;

    invoke-interface {v4, v13}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 831
    .local v7, "rawPaths":[Ljava/lang/String;
    new-array v6, v1, [Ljava/lang/String;

    .line 832
    .local v6, "paths":[Ljava/lang/String;
    new-array v11, v1, [Ljava/lang/String;

    .line 834
    .local v11, "states":[Ljava/lang/String;
    move-object v6, v7

    .line 835
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    if-ge v2, v1, :cond_43

    .line 836
    aget-object v13, v6, v2

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v11, v2

    .line 835
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 818
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "paths":[Ljava/lang/String;
    .end local v7    # "rawPaths":[Ljava/lang/String;
    .end local v9    # "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "states":[Ljava/lang/String;
    :catchall_40
    move-exception v13

    :try_start_41
    monitor-exit v14
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v13

    .line 846
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "paths":[Ljava/lang/String;
    .restart local v7    # "rawPaths":[Ljava/lang/String;
    .restart local v9    # "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "states":[Ljava/lang/String;
    :cond_43
    const/4 v2, 0x0

    :goto_44
    if-ge v2, v1, :cond_b3

    .line 847
    aget-object v5, v6, v2

    .line 848
    .local v5, "path":Ljava/lang/String;
    aget-object v10, v11, v2

    .line 850
    .local v10, "state":Ljava/lang/String;
    const-string v13, "unmounted"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a2

    .line 851
    sget-object v13, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8d

    .line 852
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    .line 853
    const-string v13, "MountService"

    const-string v14, "mSD1BootMounted = true"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_66
    :goto_66
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v8

    .line 859
    .local v8, "rc":I
    if-eqz v8, :cond_84

    .line 860
    const-string v13, "MountService"

    const-string v14, "Boot-time mount failed (%d)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_84
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 865
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    .line 846
    .end local v8    # "rc":I
    :cond_8a
    :goto_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 854
    :cond_8d
    const-string v13, "/storage/sdcard1"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_66

    .line 855
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    .line 856
    const-string v13, "MountService"

    const-string v14, "mSD2BootMounted = true"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 866
    :cond_a2
    const-string v13, "shared"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8a

    .line 871
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v14, v15}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_8a

    .line 877
    .end local v5    # "path":Ljava/lang/String;
    .end local v10    # "state":Ljava/lang/String;
    :cond_b3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 878
    :try_start_b8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_c0
    :goto_c0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_dd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 879
    .local v12, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v13

    if-eqz v13, :cond_c0

    .line 880
    const-string v13, "mounted"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto :goto_c0

    .line 883
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v12    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_da
    move-exception v13

    monitor-exit v14
    :try_end_dc
    .catchall {:try_start_b8 .. :try_end_dc} :catchall_da

    throw v13

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_dd
    :try_start_dd
    monitor-exit v14
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_da

    .line 889
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    if-eqz v13, :cond_ef

    .line 890
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 891
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 896
    :cond_ef
    new-instance v13, Lcom/android/server/MountService$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v13}, Lcom/android/server/MountService$1;->start()V

    .line 902
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 903
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 904
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    .line 905
    return-void
.end method

.method private handleUserSwitch()V
    .registers 1

    .prologue
    .line 4755
    return-void
.end method

.method private isExternalStorage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 4548
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4549
    :try_start_3
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 4550
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 4551
    if-nez v0, :cond_1a

    .line 4552
    const-string v1, "MountService"

    const-string v2, "isExternalStorage error, invalid path!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4553
    const/4 v1, 0x0

    .line 4555
    :goto_16
    return v1

    .line 4550
    .end local v0    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1

    .line 4555
    .restart local v0    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1a
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    goto :goto_16
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3328
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_7

    .line 3343
    :cond_6
    :goto_6
    return v1

    .line 3332
    :cond_7
    if-nez p1, :cond_b

    move v1, v2

    .line 3333
    goto :goto_6

    .line 3336
    :cond_b
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 3343
    .local v0, "packageUid":I
    if-eq p2, v0, :cond_6

    move v1, v2

    goto :goto_6
.end method

.method private isVolumeRegistered(Ljava/lang/String;)Z
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1813
    const/4 v1, 0x0

    .line 1814
    .local v1, "isVolumeRegistered":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 1815
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1816
    const/4 v1, 0x1

    .line 1820
    :cond_1d
    return v1

    .line 1814
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;
    .registers 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "appPaths"    # [Ljava/io/File;
    .param p2, "voldPaths"    # [Ljava/io/File;

    .prologue
    .line 3634
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_c

    .line 3635
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Paths must be 1:1 mapping"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3638
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_61

    .line 3639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3640
    .local v0, "appPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 3641
    new-instance v2, Ljava/io/File;

    aget-object v3, p2, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 3643
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 3644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3649
    .end local v0    # "appPath":Ljava/lang/String;
    .end local p0    # "path":Ljava/lang/String;
    :cond_5d
    :goto_5d
    return-object p0

    .line 3638
    .restart local v0    # "appPath":Ljava/lang/String;
    .restart local p0    # "path":Ljava/lang/String;
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 3649
    .end local v0    # "appPath":Ljava/lang/String;
    :cond_61
    const/4 p0, 0x0

    goto :goto_5d
.end method

.method private notifyShareAvailabilityChange(Z)V
    .registers 11
    .param p1, "avail"    # Z

    .prologue
    .line 2210
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2211
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 2212
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_d
    if-ltz v2, :cond_39

    .line 2213
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2d

    .line 2215
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_17
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, p1}, Landroid/os/storage/IMountServiceListener;->onUsbMassStorageConnectionChanged(Z)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_30
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2d

    .line 2212
    :goto_1c
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 2216
    :catch_1f
    move-exception v4

    .line 2217
    .local v4, "rex":Landroid/os/RemoteException;
    :try_start_20
    const-string v6, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1c

    .line 2223
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    .end local v4    # "rex":Landroid/os/RemoteException;
    :catchall_2d
    move-exception v6

    monitor-exit v7
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_2d

    throw v6

    .line 2219
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_30
    move-exception v1

    .line 2220
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_31
    const-string v6, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 2223
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_39
    monitor-exit v7
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_2d

    .line 2225
    iget-boolean v6, p0, Lcom/android/server/MountService;->mSystemReady:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_57

    .line 2226
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 2231
    :goto_42
    if-nez p1, :cond_56

    .line 2235
    const/4 v3, 0x0

    .line 2236
    .local v3, "needTurnOff":Z
    iget-boolean v6, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-eqz v6, :cond_5a

    .line 2237
    const/4 v3, 0x1

    .line 2252
    :goto_4a
    if-eqz v3, :cond_56

    .line 2253
    new-instance v6, Lcom/android/server/MountService$10;

    const-string v7, "MountService#AvailabilityChange"

    invoke-direct {v6, p0, v7}, Lcom/android/server/MountService$10;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/MountService$10;->start()V

    .line 2263
    .end local v3    # "needTurnOff":Z
    :cond_56
    return-void

    .line 2228
    :cond_57
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    goto :goto_42

    .line 2239
    .restart local v3    # "needTurnOff":Z
    :cond_5a
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2240
    :try_start_5d
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2241
    .local v5, "size":I
    const/4 v2, 0x0

    :goto_64
    if-ge v2, v5, :cond_7f

    .line 2242
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "shared"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 2243
    const/4 v3, 0x1

    .line 2247
    :cond_7f
    monitor-exit v7

    goto :goto_4a

    .end local v5    # "size":I
    :catchall_81
    move-exception v6

    monitor-exit v7
    :try_end_83
    .catchall {:try_start_5d .. :try_end_83} :catchall_81

    throw v6

    .line 2241
    .restart local v5    # "size":I
    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_64
.end method

.method private notifyVolumeChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 1876
    const-string v2, "MountService"

    const-string v3, "usbotg: mountservice notifyVolumeChange:disk bad removal"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    if-eqz p1, :cond_b

    if-nez p2, :cond_13

    .line 1878
    :cond_b
    const-string v2, "MountService"

    const-string v3, "usbotg: mountservice notifyVolumeChange:invalid lable or invalid path"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    :goto_12
    return-void

    .line 1881
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v15

    .line 1882
    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    if-nez v2, :cond_2a

    .line 1883
    const-string v2, "MountService"

    const-string v3, "usbotg: mountservice notifyVolumeChange:volumes is null... "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    monitor-exit v15

    goto :goto_12

    .line 1901
    :catchall_27
    move-exception v2

    monitor-exit v15
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_27

    throw v2

    .line 1886
    :cond_2a
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1887
    .local v14, "size":I
    const/4 v13, 0x0

    .line 1888
    .local v13, "idx_incd":I
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbotg: mountservice notifyVolumeChange:before mVolumes size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    new-instance v1, Landroid/os/storage/StorageVolume;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 1890
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 1891
    const/4 v2, -0x1

    if-eq v13, v2, :cond_c3

    .line 1892
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbotg: mountservice notifyVolumeChange:remove volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->removeVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 1897
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbotg: mountservice notifyVolumeChange:after mVolumes size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_c6

    .line 1899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v12}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1898
    add-int/lit8 v12, v12, 0x1

    goto :goto_a9

    .line 1895
    .end local v12    # "i":I
    :cond_c3
    monitor-exit v15

    goto/16 :goto_12

    .line 1901
    .restart local v12    # "i":I
    :cond_c6
    monitor-exit v15
    :try_end_c7
    .catchall {:try_start_2a .. :try_end_c7} :catchall_27

    goto/16 :goto_12
.end method

.method private notifyVolumeChange(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 23
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "oldState"    # I
    .param p4, "newState"    # I
    .param p5, "bValue"    # Z

    .prologue
    .line 1825
    const-string v3, "MountService"

    const-string v4, "otg patition state change"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    if-eqz p1, :cond_b

    if-nez p2, :cond_13

    .line 1827
    :cond_b
    const-string v3, "MountService"

    const-string v4, "usbotg: mountservice notifyVolumeChange:invalid lable or invalid path"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    :goto_12
    return-void

    .line 1831
    :cond_13
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_21

    .line 1832
    const-string v3, "MountService"

    const-string v4, "usbotg: mountservice notifyVolumeChange:oldState=newState,don\'t care"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1835
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1836
    :try_start_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    if-nez v3, :cond_3a

    .line 1837
    const-string v3, "MountService"

    const-string v4, "usbotg: mountservice notifyVolumeChange: volumes is null... "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    monitor-exit v16

    goto :goto_12

    .line 1870
    :catchall_37
    move-exception v3

    monitor-exit v16
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_37

    throw v3

    .line 1840
    :cond_3a
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1841
    .local v15, "size":I
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:before mVolumes size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 1843
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/MountService;->isVolumeRegistered(Ljava/lang/String;)Z

    move-result v13

    .line 1844
    .local v13, "bPathIncluded":Z
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:otg path is registered? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    if-nez p3, :cond_11c

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_11c

    .line 1846
    if-nez v13, :cond_c4

    .line 1847
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:add volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "removed"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    :cond_c4
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange,Volume state is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    invoke-direct/range {p0 .. p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1866
    :goto_e1
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:after mVolumes size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_17a

    .line 1868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3, v14}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1867
    add-int/lit8 v14, v14, 0x1

    goto :goto_102

    .line 1855
    .end local v14    # "i":I
    :cond_11c
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_144

    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_144

    .line 1856
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange,Volume state is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    invoke-direct/range {p0 .. p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_e1

    .line 1858
    :cond_144
    const/4 v3, 0x4

    move/from16 v0, p4

    if-ne v0, v3, :cond_168

    .line 1859
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange,Volume state is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    invoke-direct/range {p0 .. p5}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto/16 :goto_e1

    .line 1861
    :cond_168
    const/4 v3, 0x5

    move/from16 v0, p3

    if-ne v0, v3, :cond_177

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_177

    .line 1862
    invoke-direct/range {p0 .. p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_e1

    .line 1864
    :cond_177
    monitor-exit v16

    goto/16 :goto_12

    .line 1870
    .restart local v14    # "i":I
    :cond_17a
    monitor-exit v16
    :try_end_17b
    .catchall {:try_start_3a .. :try_end_17b} :catchall_37

    goto/16 :goto_12
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "oldState"    # I
    .param p4, "newState"    # I

    .prologue
    .line 1905
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1906
    return-void
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 13
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "oldState"    # I
    .param p4, "newState"    # I
    .param p5, "bValue"    # Z

    .prologue
    const/4 v6, 0x7

    .line 1911
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1912
    :try_start_4
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 1917
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1918
    .local v1, "state":Ljava/lang/String;
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_51

    .line 1920
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyVolumeStateChange::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bValue::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    const/4 v0, 0x0

    .line 1924
    .local v0, "action":Ljava/lang/String;
    if-ne p3, v6, :cond_46

    if-eq p4, p3, :cond_46

    .line 1925
    const-string v3, "MountService"

    const-string v4, "Sending ACTION_MEDIA_UNSHARED intent"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1929
    :cond_46
    const/4 v3, -0x1

    if-ne p4, v3, :cond_54

    .line 1989
    :cond_49
    :goto_49
    if-eqz v0, :cond_50

    .line 1990
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1992
    :cond_50
    :goto_50
    return-void

    .line 1918
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "state":Ljava/lang/String;
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_51
    move-exception v3

    :try_start_52
    monitor-exit v4
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v3

    .line 1930
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "state":Ljava/lang/String;
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_54
    if-eqz p4, :cond_49

    .line 1932
    const/4 v3, 0x1

    if-ne p4, v3, :cond_a0

    .line 1937
    const-string v3, "bad_removal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    const-string v3, "nofs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    const-string v3, "unmountable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v3

    if-nez v3, :cond_49

    .line 1941
    const-string v3, "MountService"

    const-string v4, "updating volume state for media bad removal nofs and unmountable"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    const-string v3, "unmounted"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    iget-boolean v3, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    if-eqz v3, :cond_9d

    iget-boolean v3, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-nez v3, :cond_9d

    iget-boolean v3, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-nez v3, :cond_9d

    iget-boolean v3, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-nez v3, :cond_9d

    .line 1944
    const-string v3, "MountService"

    const-string v4, "updateDefaultpath VolumeState.Idle"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1947
    :cond_9d
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    goto :goto_49

    .line 1949
    :cond_a0
    const/4 v3, 0x2

    if-eq p4, v3, :cond_49

    .line 1950
    const/4 v3, 0x3

    if-ne p4, v3, :cond_b5

    .line 1951
    const-string v3, "MountService"

    const-string v4, "updating volume state checking"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    const-string v3, "checking"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1953
    const-string v0, "android.intent.action.MEDIA_CHECKING"

    goto :goto_49

    .line 1954
    :cond_b5
    const/4 v3, 0x4

    if-ne p4, v3, :cond_100

    .line 1955
    const-string v3, "MountService"

    const-string v4, "updating volume state mounted"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    if-eqz p5, :cond_f3

    .line 1957
    const-string v3, "MountService"

    const-string v4, "the filesystem of the mounted storage is FAT32. update maxFileSize to 4G"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    const-wide v3, 0xffffffffL

    invoke-virtual {v2, v3, v4}, Landroid/os/storage/StorageVolume;->setMaxFileSize(J)V

    .line 1963
    :goto_d0
    const-string v3, "mounted"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    iget-boolean v3, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    if-eqz v3, :cond_ef

    iget-boolean v3, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-nez v3, :cond_ef

    iget-boolean v3, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-nez v3, :cond_ef

    iget-boolean v3, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-nez v3, :cond_ef

    .line 1965
    const-string v3, "MountService"

    const-string v4, "updateDefaultpath VolumeState.Mounted"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1968
    :cond_ef
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    goto/16 :goto_49

    .line 1960
    :cond_f3
    const-string v3, "MountService"

    const-string v4, "the filesystem of the mounted storage is not FAT32. update maxFileSize to 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/storage/StorageVolume;->setMaxFileSize(J)V

    goto :goto_d0

    .line 1969
    :cond_100
    const/4 v3, 0x5

    if-eq p4, v3, :cond_49

    .line 1971
    const/4 v3, 0x6

    if-eq p4, v3, :cond_49

    .line 1972
    if-ne p4, v6, :cond_132

    .line 1973
    const-string v3, "MountService"

    const-string v4, "Updating volume state media mounted"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    const-string v3, "unmounted"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1978
    const-string v3, "MountService"

    const-string v4, "Updating media shared"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    const-string v3, "shared"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1980
    const-string v0, "android.intent.action.MEDIA_SHARED"

    .line 1981
    const-string v3, "MountService"

    const-string v4, "Sending ACTION_MEDIA_SHARED intent"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    .line 1982
    :cond_132
    const/16 v3, 0x8

    if-ne p4, v3, :cond_13f

    .line 1983
    const-string v3, "MountService"

    const-string v4, "Live shared mounts not supported yet!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_50

    .line 1986
    :cond_13f
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled VolumeState {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49
.end method

.method private readStorageListLocked()V
    .registers 33

    .prologue
    .line 2316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 2322
    .local v24, "resources":Landroid/content/res/Resources;
    const v19, 0x10f0010

    .line 2323
    .local v19, "id":I
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v22

    .line 2324
    .local v22, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static/range {v22 .. v22}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v14

    .line 2327
    .local v14, "attrs":Landroid/util/AttributeSet;
    :try_start_1e
    const-string v3, "StorageList"

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2329
    :cond_25
    :goto_25
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2331
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_2b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_2b} :catch_15d
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2b} :catch_1c0
    .catchall {:try_start_1e .. :try_end_2b} :catchall_166

    move-result-object v17

    .line 2332
    .local v17, "element":Ljava/lang/String;
    if-nez v17, :cond_5a

    .line 2433
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_23c

    const/16 v20, 0x1

    .line 2434
    .local v20, "index":I
    :goto_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_3e
    :goto_3e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_234

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 2435
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 2436
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "index":I
    .local v21, "index":I
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v20, v21

    .end local v21    # "index":I
    .restart local v20    # "index":I
    goto :goto_3e

    .line 2334
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "index":I
    :cond_5a
    :try_start_5a
    const-string v3, "storage"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2335
    sget-object v3, Lcom/android/internal/R$styleable;->Storage:[I

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 2338
    .local v13, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2340
    .local v23, "path":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v12, -0x1

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 2342
    .local v4, "descriptionId":I
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 2344
    .local v15, "description":Ljava/lang/CharSequence;
    const/4 v3, 0x2

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 2346
    .local v5, "primary":Z
    const/4 v3, 0x3

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 2348
    .local v6, "removable":Z
    const/4 v3, 0x4

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 2354
    .local v7, "emulated":Z
    const/4 v8, 0x0

    .line 2355
    .local v8, "mtpReserve":I
    const/4 v3, 0x6

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 2358
    .local v9, "allowMassStorage":Z
    const/4 v3, 0x7

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x400

    mul-long v28, v28, v30

    const-wide/16 v30, 0x400

    mul-long v10, v28, v30

    .line 2363
    .local v10, "maxFileSize":J
    if-eqz v5, :cond_b7

    .line 2364
    const/16 v23, 0x0

    .line 2366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2367
    const/4 v5, 0x1

    .line 2368
    const/4 v6, 0x0

    .line 2369
    const/4 v7, 0x1

    .line 2370
    const/16 v8, 0xa

    .line 2373
    :cond_b7
    const-string v3, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "got storage path: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " description: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " primary: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " removable: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " emulated: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " mtpReserve: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " allowMassStorage: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " maxFileSize: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    if-eqz v7, :cond_1c9

    .line 2382
    new-instance v2, Landroid/os/storage/StorageVolume;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v9    # "allowMassStorage":Z
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    .line 2385
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v27

    .line 2386
    .local v27, "userManager":Lcom/android/server/pm/UserManagerService;
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :goto_147
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_193

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/UserInfo;

    .line 2387
    .local v26, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    :try_end_15c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5a .. :try_end_15c} :catch_15d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_15c} :catch_1c0
    .catchall {:try_start_5a .. :try_end_15c} :catchall_166

    goto :goto_147

    .line 2426
    .end local v4    # "descriptionId":I
    .end local v8    # "mtpReserve":I
    .end local v10    # "maxFileSize":J
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "description":Ljava/lang/CharSequence;
    .end local v17    # "element":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v23    # "path":Ljava/lang/String;
    .end local v26    # "user":Landroid/content/pm/UserInfo;
    .end local v27    # "userManager":Lcom/android/server/pm/UserManagerService;
    :catch_15d
    move-exception v16

    .line 2427
    .local v16, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_15e
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_166
    .catchall {:try_start_15e .. :try_end_166} :catchall_166

    .line 2433
    .end local v16    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_166
    move-exception v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService;->isExternalStorageEmulated()Z

    move-result v12

    if-eqz v12, :cond_238

    const/16 v20, 0x1

    .line 2434
    .restart local v20    # "index":I
    :goto_16f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_177
    :goto_177
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_230

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 2435
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v12

    if-nez v12, :cond_177

    .line 2436
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "index":I
    .restart local v21    # "index":I
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v20, v21

    .end local v21    # "index":I
    .restart local v20    # "index":I
    goto :goto_177

    .line 2390
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    .end local v20    # "index":I
    .restart local v4    # "descriptionId":I
    .restart local v8    # "mtpReserve":I
    .restart local v10    # "maxFileSize":J
    .restart local v13    # "a":Landroid/content/res/TypedArray;
    .restart local v15    # "description":Ljava/lang/CharSequence;
    .restart local v17    # "element":Ljava/lang/String;
    .restart local v23    # "path":Ljava/lang/String;
    .restart local v27    # "userManager":Lcom/android/server/pm/UserManagerService;
    :cond_193
    :try_start_193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_1d4

    .line 2391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1a1
    :goto_1a1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/storage/StorageVolume;

    .line 2392
    .local v25, "shareVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v25 .. v25}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    sget-object v12, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a1

    .line 2393
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;
    :try_end_1bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_193 .. :try_end_1bf} :catch_15d
    .catch Ljava/io/IOException; {:try_start_193 .. :try_end_1bf} :catch_1c0
    .catchall {:try_start_193 .. :try_end_1bf} :catchall_166

    goto :goto_1a1

    .line 2428
    .end local v4    # "descriptionId":I
    .end local v8    # "mtpReserve":I
    .end local v10    # "maxFileSize":J
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "description":Ljava/lang/CharSequence;
    .end local v17    # "element":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v23    # "path":Ljava/lang/String;
    .end local v25    # "shareVolume":Landroid/os/storage/StorageVolume;
    .end local v27    # "userManager":Lcom/android/server/pm/UserManagerService;
    :catch_1c0
    move-exception v16

    .line 2429
    .local v16, "e":Ljava/io/IOException;
    :try_start_1c1
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1c9
    .catchall {:try_start_1c1 .. :try_end_1c9} :catchall_166

    .line 2399
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v4    # "descriptionId":I
    .restart local v5    # "primary":Z
    .restart local v6    # "removable":Z
    .restart local v7    # "emulated":Z
    .restart local v8    # "mtpReserve":I
    .restart local v9    # "allowMassStorage":Z
    .restart local v10    # "maxFileSize":J
    .restart local v13    # "a":Landroid/content/res/TypedArray;
    .restart local v15    # "description":Ljava/lang/CharSequence;
    .restart local v17    # "element":Ljava/lang/String;
    .restart local v23    # "path":Ljava/lang/String;
    :cond_1c9
    if-eqz v23, :cond_1cd

    if-nez v15, :cond_1d9

    .line 2400
    :cond_1cd
    :try_start_1cd
    const-string v3, "MountService"

    const-string v12, "Missing storage path or description in readStorageList"

    invoke-static {v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v9    # "allowMassStorage":Z
    :cond_1d4
    :goto_1d4
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_25

    .line 2402
    .restart local v5    # "primary":Z
    .restart local v6    # "removable":Z
    .restart local v7    # "emulated":Z
    .restart local v9    # "allowMassStorage":Z
    :cond_1d9
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 2405
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 2408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    const-string v28, "unmounted"

    move-object/from16 v0, v28

    invoke-virtual {v3, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2409
    const-string v3, "unmounted"

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 2411
    if-eqz v9, :cond_206

    .line 2412
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/MountService;->mIsAnyAllowUMS:Z

    .line 2415
    :cond_206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_21b

    sget-object v3, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21b

    .line 2416
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    goto :goto_1d4

    .line 2417
    :cond_21b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_1d4

    const-string v3, "/storage/sdcard1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d4

    .line 2418
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;
    :try_end_22f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1cd .. :try_end_22f} :catch_15d
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_22f} :catch_1c0
    .catchall {:try_start_1cd .. :try_end_22f} :catchall_166

    goto :goto_1d4

    .line 2439
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    .end local v4    # "descriptionId":I
    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v8    # "mtpReserve":I
    .end local v9    # "allowMassStorage":Z
    .end local v10    # "maxFileSize":J
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "description":Ljava/lang/CharSequence;
    .end local v17    # "element":Ljava/lang/String;
    .end local v23    # "path":Ljava/lang/String;
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v20    # "index":I
    :cond_230
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2433
    throw v3

    .line 2439
    .restart local v17    # "element":Ljava/lang/String;
    :cond_234
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2441
    return-void

    .line 2433
    .end local v17    # "element":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "index":I
    :cond_238
    const/16 v20, 0x0

    goto/16 :goto_16f

    .restart local v17    # "element":Ljava/lang/String;
    :cond_23c
    const/16 v20, 0x0

    goto/16 :goto_36
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 6
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 3709
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3710
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3711
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_22

    .line 3712
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3713
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 3715
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3716
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3720
    :cond_22
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3721
    return-void
.end method

.method private removeVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .registers 5
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 2479
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeVolumeLocked() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2481
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2482
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    return-void
.end method

.method private sendSDSwapIntent()V
    .registers 6

    .prologue
    .line 4527
    invoke-direct {p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v1

    .line 4528
    .local v1, "sdSwapStatus":Z
    iget-boolean v2, p0, Lcom/android/server/MountService;->mFirstTimeSDSwapIntent:Z

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lcom/android/server/MountService;->mSwapStateForSDSwapIntent:Z

    if-eq v1, v2, :cond_3b

    .line 4529
    :cond_c
    iput-boolean v1, p0, Lcom/android/server/MountService;->mSwapStateForSDSwapIntent:Z

    .line 4536
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.SD_SWAP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4537
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "SD_EXIST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4538
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSDSwapIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4539
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4540
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/MountService;->mFirstTimeSDSwapIntent:Z

    .line 4541
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_3a
    return-void

    .line 4532
    :cond_3b
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSDSwapIntent: already sent INTENT_SD_SWAP, Just skip this. status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method private sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2270
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2272
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-boolean v1, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    if-eq v1, v3, :cond_4a

    iget v1, p0, Lcom/android/server/MountService;->mUMSCount:I

    if-gtz v1, :cond_4a

    :cond_32
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-boolean v1, p0, Lcom/android/server/MountService;->mMountAll:Z

    if-eq v1, v3, :cond_4a

    :cond_3e
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-boolean v1, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-ne v1, v3, :cond_4a

    .line 2279
    :cond_4a
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    if-nez v1, :cond_52

    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    if-eqz v1, :cond_7c

    :cond_52
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 2280
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    if-eqz v1, :cond_b7

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 2281
    iput-boolean v4, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    .line 2282
    iget-boolean v1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    if-nez v1, :cond_7c

    .line 2283
    const-string v1, "first_boot_mounted"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2284
    const-string v1, "MountService"

    const-string v2, "sendStorageIntent mSD1BootMounted"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    :cond_7c
    :goto_7c
    const-string v1, "storage_volume"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2295
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStorageIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2297
    return-void

    .line 2286
    :cond_b7
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    if-eqz v1, :cond_7c

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/storage/sdcard1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 2287
    iput-boolean v4, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    .line 2288
    iget-boolean v1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    if-nez v1, :cond_7c

    .line 2289
    const-string v1, "first_boot_mounted"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2290
    const-string v1, "MountService"

    const-string v2, "sendStorageIntent mSD2BootMounted"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c
.end method

.method private sendUmsIntent(Z)V
    .registers 5
    .param p1, "c"    # Z

    .prologue
    .line 2300
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_11

    const-string v0, "android.intent.action.UMS_CONNECTED"

    :goto_8
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2303
    return-void

    .line 2300
    :cond_11
    const-string v0, "android.intent.action.UMS_DISCONNECTED"

    goto :goto_8
.end method

.method private setDefaultPath(Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 4665
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultPath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4666
    const-class v1, Lcom/mediatek/common/storage/IStorageManagerEx;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/storage/IStorageManagerEx;

    .line 4667
    .local v0, "sm":Lcom/mediatek/common/storage/IStorageManagerEx;
    invoke-interface {v0, p1}, Lcom/mediatek/common/storage/IStorageManagerEx;->setDefaultPath(Ljava/lang/String;)V

    .line 4668
    return-void
.end method

.method private setUmsEnabling(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 2732
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2733
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 2734
    monitor-exit v1

    .line 2735
    return-void

    .line 2734
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private updateDefaultPathForSwap(ZLjava/lang/String;)V
    .registers 5
    .param p1, "mount"    # Z
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 4630
    if-eqz p1, :cond_10

    const-string v1, "/storage/sdcard1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4637
    const-string v1, "/storage/sdcard1"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->setDefaultPath(Ljava/lang/String;)V

    .line 4657
    :cond_f
    :goto_f
    return-void

    .line 4638
    :cond_10
    if-nez p1, :cond_f

    .line 4640
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 4641
    .local v0, "defaultPath":Ljava/lang/String;
    sget-object v1, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 4648
    const-string v1, "/storage/sdcard1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4654
    sget-object v1, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->setDefaultPath(Ljava/lang/String;)V

    goto :goto_f
.end method

.method private updateDefaultpath()V
    .registers 9

    .prologue
    .line 4245
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 4246
    .local v0, "defaultPath":Ljava/lang/String;
    move-object v4, v0

    .line 4247
    .local v4, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4248
    .local v3, "needChange":Z
    const-string v5, "mounted"

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 4249
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v6

    .line 4250
    :try_start_15
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4251
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v2, :cond_37

    .line 4252
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 4253
    const-string v5, "mounted"

    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 4254
    const/4 v3, 0x1

    .line 4258
    :cond_37
    monitor-exit v6
    :try_end_38
    .catchall {:try_start_15 .. :try_end_38} :catchall_5f

    .line 4259
    if-eqz v3, :cond_5b

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 4260
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDefaultPath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4261
    invoke-direct {p0, v4}, Lcom/android/server/MountService;->setDefaultPath(Ljava/lang/String;)V

    .line 4264
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_5b
    return-void

    .line 4251
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 4258
    .end local v1    # "i":I
    .end local v2    # "length":I
    :catchall_5f
    move-exception v5

    :try_start_60
    monitor-exit v6
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v5
.end method

.method private updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .registers 4
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 1296
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    return-void
.end method

.method private updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1304
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1306
    .local v4, "path":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1307
    :try_start_9
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v6, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1308
    .local v3, "oldState":Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 1309
    monitor-exit v7
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_31

    .line 1311
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 1312
    const-string v6, "MountService"

    const-string v7, "Duplicate state transition (%s -> %s) for %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v9

    aput-object p2, v8, v10

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :goto_30
    return-void

    .line 1309
    .end local v3    # "oldState":Ljava/lang/String;
    :catchall_31
    move-exception v6

    :try_start_32
    monitor-exit v7
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v6

    .line 1317
    .restart local v3    # "oldState":Ljava/lang/String;
    :cond_34
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "volume state changed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    sget-object v6, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 1335
    const-string v6, "sdcard1"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 1337
    const-string v6, "unmounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 1338
    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v9, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1345
    iget-object v6, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v7, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8, v4}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1352
    :cond_8f
    :goto_8f
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1353
    :try_start_92
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_9a
    if-ltz v2, :cond_d4

    .line 1354
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_a4
    .catchall {:try_start_92 .. :try_end_a4} :catchall_c8

    .line 1356
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_a4
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, v4, v3, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_a9} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a9} :catch_cb
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_c8

    .line 1353
    :goto_a9
    add-int/lit8 v2, v2, -0x1

    goto :goto_9a

    .line 1347
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    :cond_ac
    const-string v6, "mounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 1348
    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v10, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_8f

    .line 1357
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_ba
    move-exception v5

    .line 1358
    .local v5, "rex":Landroid/os/RemoteException;
    :try_start_bb
    const-string v6, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a9

    .line 1364
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    .end local v5    # "rex":Landroid/os/RemoteException;
    :catchall_c8
    move-exception v6

    monitor-exit v7
    :try_end_ca
    .catchall {:try_start_bb .. :try_end_ca} :catchall_c8

    throw v6

    .line 1360
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_cb
    move-exception v1

    .line 1361
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_cc
    const-string v6, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a9

    .line 1364
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_d4
    monitor-exit v7
    :try_end_d5
    .catchall {:try_start_cc .. :try_end_d5} :catchall_c8

    goto/16 :goto_30
.end method

.method private validatePermission(Ljava/lang/String;)V
    .registers 6
    .param p1, "perm"    # Ljava/lang/String;

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 2307
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2309
    :cond_1a
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;)V
    .registers 6
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 799
    :goto_0
    const-wide/16 v1, 0x1388

    :try_start_2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 800
    return-void

    .line 802
    :cond_b
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " still waiting for MountService ready..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_31} :catch_32

    goto :goto_0

    .line 805
    :catch_32
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MountService"

    const-string v2, "Interrupt while waiting for MountService to be ready."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitForReady()V
    .registers 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 794
    return-void
.end method

.method private warnOnNotMounted()V
    .registers 5

    .prologue
    .line 3041
    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 3042
    .local v1, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v1, :cond_1e

    .line 3043
    const/4 v0, 0x0

    .line 3045
    .local v0, "mounted":Z
    :try_start_7
    const-string v2, "mounted"

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_14} :catch_1f

    move-result v0

    .line 3049
    :goto_15
    if-nez v0, :cond_1e

    .line 3050
    const-string v2, "MountService"

    const-string v3, "getSecureContainerList() called when storage not mounted"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    .end local v0    # "mounted":Z
    :cond_1e
    return-void

    .line 3046
    .restart local v0    # "mounted":Z
    :catch_1f
    move-exception v2

    goto :goto_15
.end method


# virtual methods
.method public changeEncryptionPassword(Ljava/lang/String;)I
    .registers 9
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 3512
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3513
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3516
    :cond_e
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3519
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3522
    const-string v2, "MountService"

    const-string v3, "changing encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    :try_start_21
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "changepw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3528
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_40
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_21 .. :try_end_40} :catch_42

    move-result v2

    .line 3531
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_41
    return v2

    .line 3529
    :catch_42
    move-exception v0

    .line 3531
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_41
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .registers 14
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "fstype"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "external"    # Z

    .prologue
    .line 3070
    sget-object v2, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3072
    if-eqz p6, :cond_1f

    invoke-direct {p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 3073
    const-string v2, "MountService"

    const-string v3, "External SD not exist, and PMS want to create ASEC in SD (APP2SD). For SWAP feature, make createSecureContainer() fail!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    const/4 v1, -0x1

    .line 3095
    :cond_1e
    :goto_1e
    return v1

    .line 3078
    :cond_1f
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3079
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3080
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3082
    const/4 v1, 0x0

    .line 3084
    .local v1, "rc":I
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "create"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object p3, v5, v2

    const/4 v2, 0x4

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x6

    if-eqz p6, :cond_6c

    const-string v2, "1"

    :goto_58
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2b .. :try_end_5d} :catch_6f

    .line 3090
    :goto_5d
    if-nez v1, :cond_1e

    .line 3091
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 3092
    :try_start_62
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3093
    monitor-exit v3

    goto :goto_1e

    :catchall_69
    move-exception v2

    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_69

    throw v2

    .line 3084
    :cond_6c
    :try_start_6c
    const-string v2, "0"
    :try_end_6e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6c .. :try_end_6e} :catch_6f

    goto :goto_58

    .line 3086
    :catch_6f
    move-exception v0

    .line 3087
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_5d
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .registers 10
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 3448
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3449
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3452
    :cond_e
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3455
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3458
    const-string v3, "MountService"

    const-string v4, "decrypting storage..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    :try_start_21
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "checkpw"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v7, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 3465
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3466
    .local v0, "code":I
    if-nez v0, :cond_4f

    .line 3469
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/MountService$12;

    invoke-direct {v4, p0}, Lcom/android/server/MountService$12;-><init>(Lcom/android/server/MountService;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_21 .. :try_end_4f} :catch_50

    .line 3483
    .end local v0    # "code":I
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_4f
    :goto_4f
    return v0

    .line 3481
    :catch_50
    move-exception v1

    .line 3483
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    goto :goto_4f
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 3133
    const-string v4, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3134
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3135
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3143
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 3144
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 3146
    const/4 v3, 0x0

    .line 3148
    .local v3, "rc":I
    :try_start_16
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "destroy"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3149
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_2f

    .line 3150
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3152
    :cond_2f
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_34
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_16 .. :try_end_34} :catch_48

    .line 3162
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_34
    if-nez v3, :cond_47

    .line 3163
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 3164
    :try_start_39
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 3165
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3167
    :cond_46
    monitor-exit v5
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_55

    .line 3170
    :cond_47
    return v3

    .line 3153
    :catch_48
    move-exception v2

    .line 3154
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 3155
    .local v1, "code":I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_53

    .line 3156
    const/4 v3, -0x7

    goto :goto_34

    .line 3158
    :cond_53
    const/4 v3, -0x1

    goto :goto_34

    .line 3167
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_55
    move-exception v4

    :try_start_56
    monitor-exit v5
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4182
    iget-object v10, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    const-string v12, "MountService"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4184
    new-instance v8, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v10, "  "

    const/16 v11, 0xa0

    move-object/from16 v0, p2

    invoke-direct {v8, v0, v10, v11}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 4186
    .local v8, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v11, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v11

    .line 4187
    :try_start_17
    const-string v10, "mObbMounts:"

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4188
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4189
    iget-object v10, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4191
    .local v1, "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_73

    .line 4192
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4193
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4194
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4195
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 4196
    .local v7, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_5c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/MountService$ObbState;

    .line 4197
    .local v6, "obbState":Lcom/android/server/MountService$ObbState;
    invoke-virtual {v8, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_5c

    .line 4214
    .end local v1    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "obbState":Lcom/android/server/MountService$ObbState;
    .end local v7    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :catchall_6c
    move-exception v10

    monitor-exit v11
    :try_end_6e
    .catchall {:try_start_17 .. :try_end_6e} :catchall_6c

    throw v10

    .line 4199
    .restart local v1    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .restart local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_6f
    :try_start_6f
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_29

    .line 4201
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_73
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4203
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4204
    const-string v10, "mObbPathToStateMap:"

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4205
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4206
    iget-object v10, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4207
    .local v5, "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_8b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ad

    .line 4208
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4209
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4210
    const-string v10, " -> "

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4211
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_8b

    .line 4213
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_ad
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4214
    monitor-exit v11
    :try_end_b1
    .catchall {:try_start_6f .. :try_end_b1} :catchall_6c

    .line 4216
    iget-object v11, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v11

    .line 4217
    :try_start_b4
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4218
    const-string v10, "mVolumes:"

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4219
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4220
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_c5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_100

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageVolume;

    .line 4221
    .local v9, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4222
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4223
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Current state: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v10, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4224
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_c5

    .line 4227
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_fd
    move-exception v10

    monitor-exit v11
    :try_end_ff
    .catchall {:try_start_b4 .. :try_end_ff} :catchall_fd

    throw v10

    .line 4226
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_100
    :try_start_100
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4227
    monitor-exit v11
    :try_end_104
    .catchall {:try_start_100 .. :try_end_104} :catchall_fd

    .line 4229
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4230
    const-string v10, "mConnection:"

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4231
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4232
    iget-object v10, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v0, p3

    invoke-virtual {v10, p1, v8, v0}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4233
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4234
    return-void
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .registers 9
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3488
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3489
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3492
    :cond_f
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3495
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3498
    const-string v2, "MountService"

    const-string v3, "encrypting storage..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    :try_start_22
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "enablecrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "inplace"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_22 .. :try_end_3e} :catch_3f

    .line 3508
    :goto_3e
    return v1

    .line 3503
    :catch_3f
    move-exception v0

    .line 3505
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_3e
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .registers 9
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 3099
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3100
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3102
    const/4 v1, 0x0

    .line 3104
    .local v1, "rc":I
    :try_start_9
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "finalize"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 3112
    :goto_1b
    return v1

    .line 3109
    :catch_1c
    move-exception v0

    .line 3110
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_1b
.end method

.method public finishMediaUpdate()V
    .registers 3

    .prologue
    .line 3324
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3325
    return-void
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "gid"    # I
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 3116
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3117
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3119
    const/4 v1, 0x0

    .line 3121
    .local v1, "rc":I
    :try_start_9
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fixperms"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_25} :catch_26

    .line 3129
    :goto_25
    return v1

    .line 3126
    :catch_26
    move-exception v0

    .line 3127
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_25
.end method

.method public formatVolume(Ljava/lang/String;)I
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 3008
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3009
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3011
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEncryptionState()I
    .registers 9

    .prologue
    const/4 v2, -0x1

    .line 3426
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3429
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3433
    :try_start_d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "cryptocomplete"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3434
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_24} :catch_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_24} :catch_2f

    move-result v2

    .line 3442
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_25
    return v2

    .line 3435
    :catch_26
    move-exception v0

    .line 3437
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 3439
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_2f
    move-exception v0

    .line 3441
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3347
    const-string v5, "rawPath cannot be null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3349
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3350
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3353
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    monitor-enter v5

    .line 3354
    :try_start_11
    iget-object v6, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 3355
    .local v3, "state":Lcom/android/server/MountService$ObbState;
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_35

    .line 3356
    if-nez v3, :cond_38

    .line 3357
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find OBB mounted at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    :cond_34
    :goto_34
    return-object v4

    .line 3355
    .end local v3    # "state":Lcom/android/server/MountService$ObbState;
    :catchall_35
    move-exception v4

    :try_start_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v4

    .line 3363
    .restart local v3    # "state":Lcom/android/server/MountService$ObbState;
    :cond_38
    :try_start_38
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "obb"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "path"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v3, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 3364
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v5, 0xd3

    invoke-virtual {v2, v5}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 3365
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_55
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_38 .. :try_end_55} :catch_57

    move-result-object v4

    goto :goto_34

    .line 3366
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_57
    move-exception v1

    .line 3367
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3368
    .local v0, "code":I
    const/16 v5, 0x196

    if-eq v0, v5, :cond_34

    .line 3371
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3303
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3304
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3305
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3309
    :try_start_d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "fspath"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 3310
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 3311
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_28} :catch_2a

    move-result-object v3

    .line 3316
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_29
    return-object v3

    .line 3312
    :catch_2a
    move-exception v1

    .line 3313
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3314
    .local v0, "code":I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_44

    .line 3315
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    const/4 v3, 0x0

    goto :goto_29

    .line 3318
    :cond_44
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 3056
    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3057
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3058
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3061
    :try_start_c
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "asec"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_21} :catch_23

    move-result-object v1

    .line 3064
    :goto_22
    return-object v1

    .line 3063
    :catch_23
    move-exception v0

    .line 3064
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-array v1, v6, [Ljava/lang/String;

    goto :goto_22
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3282
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3283
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3284
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3288
    :try_start_d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "path"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 3289
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 3290
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_28} :catch_2a

    move-result-object v3

    .line 3295
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_29
    return-object v3

    .line 3291
    :catch_2a
    move-exception v1

    .line 3292
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3293
    .local v0, "code":I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_44

    .line 3294
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    const/4 v3, 0x0

    goto :goto_29

    .line 3297
    :cond_44
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .registers 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 3015
    const-string v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3016
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3018
    :try_start_9
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "storage"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "users"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    const/16 v7, 0x70

    invoke-static {v6, v7}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v4

    .line 3023
    .local v4, "r":[Ljava/lang/String;
    array-length v6, v4

    new-array v0, v6, [I

    .line 3024
    .local v0, "data":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    array-length v6, v4

    if-ge v2, v6, :cond_55

    .line 3025
    aget-object v6, v4, v2

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_30} :catch_56

    move-result-object v5

    .line 3027
    .local v5, "tok":[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_32
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_3a} :catch_3d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_32 .. :try_end_3a} :catch_56

    .line 3024
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 3028
    :catch_3d
    move-exception v3

    .line 3029
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_3e
    const-string v6, "MountService"

    const-string v7, "Error parsing pid %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v5, v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    const/4 v6, 0x0

    new-array v0, v6, [I
    :try_end_55
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3e .. :try_end_55} :catch_56

    .line 3036
    .end local v0    # "data":[I
    .end local v2    # "i":I
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v4    # "r":[Ljava/lang/String;
    .end local v5    # "tok":[Ljava/lang/String;
    :cond_55
    :goto_55
    return-object v0

    .line 3034
    :catch_56
    move-exception v1

    .line 3035
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "MountService"

    const-string v7, "Failed to retrieve storage users list"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3036
    new-array v0, v11, [I

    goto :goto_55
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .registers 14

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3654
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3655
    .local v1, "callingUserId":I
    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.ACCESS_ALL_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_4a

    move v0, v7

    .line 3659
    .local v0, "accessAll":Z
    :goto_19
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3660
    :try_start_1c
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3661
    .local v2, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    .line 3662
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v4

    .line 3663
    .local v4, "owner":Landroid/os/UserHandle;
    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    if-ne v10, v1, :cond_4c

    :cond_3e
    move v5, v7

    .line 3664
    .local v5, "ownerMatch":Z
    :goto_3f
    if-nez v0, :cond_43

    if-eqz v5, :cond_26

    .line 3665
    :cond_43
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 3669
    .end local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "owner":Landroid/os/UserHandle;
    .end local v5    # "ownerMatch":Z
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_47
    move-exception v7

    monitor-exit v9
    :try_end_49
    .catchall {:try_start_1c .. :try_end_49} :catchall_47

    throw v7

    .end local v0    # "accessAll":Z
    :cond_4a
    move v0, v8

    .line 3655
    goto :goto_19

    .restart local v0    # "accessAll":Z
    .restart local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "owner":Landroid/os/UserHandle;
    .restart local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4c
    move v5, v8

    .line 3663
    goto :goto_3f

    .line 3668
    .end local v4    # "owner":Landroid/os/UserHandle;
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/storage/StorageVolume;

    monitor-exit v9
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_47

    return-object v7
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "mountPoint"    # Ljava/lang/String;

    .prologue
    .line 2878
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2879
    :try_start_3
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2880
    .local v0, "state":Ljava/lang/String;
    if-nez v0, :cond_39

    .line 2881
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Unknown volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3b

    .line 2883
    const-string v0, "removed"

    .line 2891
    :cond_39
    :goto_39
    monitor-exit v2

    return-object v0

    .line 2886
    :cond_3b
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): ERROR!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    const-string v0, "unknown"

    goto :goto_39

    .line 2892
    .end local v0    # "state":Ljava/lang/String;
    :catchall_5c
    move-exception v1

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method public isExternalStorageEmulated()Z
    .registers 2

    .prologue
    .line 2897
    iget-object v0, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    .line 3378
    const-string v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3379
    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 3380
    :try_start_8
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3381
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 3247
    const-string v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3248
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3249
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3251
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 3252
    :try_start_e
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3253
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v0
.end method

.method public isUsbMassStorageConnected()Z
    .registers 3

    .prologue
    .line 2738
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2740
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2741
    const/4 v0, 0x1

    .line 2744
    :goto_a
    return v0

    .line 2743
    :cond_b
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2744
    :try_start_e
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    monitor-exit v1

    goto :goto_a

    .line 2745
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .registers 7

    .prologue
    .line 2849
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2855
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2856
    :try_start_6
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2857
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    .line 2858
    .local v2, "paths":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_22

    .line 2859
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2858
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2861
    :cond_22
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_52

    .line 2863
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v0, :cond_58

    .line 2864
    aget-object v3, v2, v1

    const-string v4, "ums"

    invoke-direct {p0, v3, v4}, Lcom/android/server/MountService;->doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 2865
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsbMassStorageEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    const/4 v3, 0x1

    .line 2871
    :goto_51
    return v3

    .line 2861
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "paths":[Ljava/lang/String;
    :catchall_52
    move-exception v3

    :try_start_53
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v3

    .line 2863
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "paths":[Ljava/lang/String;
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 2870
    :cond_58
    const-string v3, "MountService"

    const-string v4, "isUsbMassStorageEnabled: false"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    const/4 v3, 0x0

    goto :goto_51
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3571
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3572
    .local v3, "userId":I
    new-instance v2, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v2, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3575
    .local v2, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v7, "appops"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3577
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v0, v6, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3580
    :try_start_1f
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_27} :catch_64

    move-result-object p2

    .line 3586
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 3587
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3592
    :cond_43
    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirsForVold(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v7

    invoke-static {p2, v6, v7}, Lcom/android/server/MountService;->maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 3595
    .local v4, "voldPath":Ljava/lang/String;
    if-eqz v4, :cond_8f

    .line 3597
    :try_start_51
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "volume"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "mkdirs"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_63
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_51 .. :try_end_63} :catch_89

    .line 3612
    .end local v4    # "voldPath":Ljava/lang/String;
    :goto_63
    return v5

    .line 3581
    :catch_64
    move-exception v1

    .line 3582
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3583
    const/4 v5, -0x1

    goto :goto_63

    .line 3599
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "voldPath":Ljava/lang/String;
    :catch_89
    move-exception v1

    .line 3600
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    goto :goto_63

    .line 3604
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_8f
    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirsForVold(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v7

    invoke-static {p2, v6, v7}, Lcom/android/server/MountService;->maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 3607
    if-eqz v4, :cond_b6

    .line 3609
    :try_start_9d
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "volume"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "mkdirs"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_af
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9d .. :try_end_af} :catch_b0

    goto :goto_63

    .line 3611
    :catch_b0
    move-exception v1

    .line 3612
    .restart local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    goto :goto_63

    .line 3616
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_b6
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mkdirs path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public monitor()V
    .registers 2

    .prologue
    .line 4238
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_9

    .line 4239
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 4241
    :cond_9
    return-void
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .registers 14
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "canonicalPath"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/storage/IObbActionListener;
    .param p5, "nonce"    # I

    .prologue
    .line 3387
    const-string v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3388
    const-string v1, "canonicalPath cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3389
    const-string v1, "token cannot be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3391
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3392
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 3393
    .local v0, "obbState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v7, p0, v0, p3, v4}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V

    .line 3394
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3398
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I

    .prologue
    .line 3174
    const-string v3, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3175
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3176
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3178
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 3179
    :try_start_e
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3180
    const/4 v2, -0x6

    monitor-exit v4

    .line 3199
    :cond_18
    :goto_18
    return v2

    .line 3182
    :cond_19
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_4b

    .line 3184
    const/4 v2, 0x0

    .line 3186
    .local v2, "rc":I
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "mount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v7, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1b .. :try_end_3c} :catch_4e

    .line 3194
    :cond_3c
    :goto_3c
    if-nez v2, :cond_18

    .line 3195
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 3196
    :try_start_41
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3197
    monitor-exit v4

    goto :goto_18

    :catchall_48
    move-exception v3

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_48

    throw v3

    .line 3182
    .end local v2    # "rc":I
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v3

    .line 3187
    .restart local v2    # "rc":I
    :catch_4e
    move-exception v1

    .line 3188
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3189
    .local v0, "code":I
    const/16 v3, 0x195

    if-eq v0, v3, :cond_3c

    .line 3190
    const/4 v2, -0x1

    goto :goto_3c
.end method

.method public mountVolume(Ljava/lang/String;)I
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 2901
    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2903
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isExternalStorage(Ljava/lang/String;)Z

    move-result v0

    .line 2904
    .local v0, "isExternal":Z
    if-eqz v0, :cond_33

    sget-object v3, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 2905
    iput-boolean v6, p0, Lcom/android/server/MountService;->mMountSwap:Z

    .line 2907
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2908
    :try_start_19
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 2909
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_4d

    .line 2910
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 2911
    const-wide/16 v3, 0x5dc

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 2912
    invoke-direct {p0, v6, p1}, Lcom/android/server/MountService;->updateDefaultPathForSwap(ZLjava/lang/String;)V

    .line 2915
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_33
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2916
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v1

    .line 2919
    .local v1, "ret":I
    iget-boolean v3, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-eqz v3, :cond_50

    if-nez v1, :cond_50

    .line 2921
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/MountService;->mMountSwap:Z

    .line 2922
    invoke-direct {p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 2923
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 2924
    invoke-direct {p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    .line 2933
    :cond_4c
    :goto_4c
    return v1

    .line 2909
    .end local v1    # "ret":I
    :catchall_4d
    move-exception v3

    :try_start_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v3

    .line 2925
    .restart local v1    # "ret":I
    :cond_50
    if-eqz v1, :cond_4c

    if-eqz v0, :cond_4c

    .line 2927
    invoke-direct {p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 2928
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 2929
    invoke-direct {p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    goto :goto_4c
.end method

.method public mountVolumeNotSwap(Ljava/lang/String;)I
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 4614
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 4616
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 4617
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onDaemonConnected()V
    .registers 3

    .prologue
    .line 1375
    new-instance v0, Lcom/android/server/MountService$8;

    const-string v1, "MountService#onDaemonConnected"

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$8;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/MountService$8;->start()V

    .line 1504
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 35
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 1511
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1512
    .local v11, "builder":Ljava/lang/StringBuilder;
    const-string v3, "onEvent::"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " raw= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    if-eqz p3, :cond_53

    .line 1515
    const-string v3, " cooked = "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    move-object/from16 v10, p3

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_30
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_53

    aget-object v26, v10, v16

    .line 1517
    .local v26, "str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    add-int/lit8 v16, v16, 0x1

    goto :goto_30

    .line 1520
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v19    # "len$":I
    .end local v26    # "str":Ljava/lang/String;
    :cond_53
    const-string v3, "MountService"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    const/16 v3, 0x25d

    move/from16 v0, p1

    if-ne v0, v3, :cond_8c

    .line 1528
    const/4 v8, 0x0

    .line 1529
    .local v8, "bValue":Z
    const/16 v3, 0xc

    aget-object v3, p3, v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1530
    const/4 v8, 0x1

    .line 1543
    :cond_70
    const/4 v3, 0x2

    aget-object v4, p3, v3

    const/4 v3, 0x3

    aget-object v5, p3, v3

    const/4 v3, 0x7

    aget-object v3, p3, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v3, 0xa

    aget-object v3, p3, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1809
    .end local v8    # "bValue":Z
    :cond_8a
    :goto_8a
    const/4 v3, 0x1

    :goto_8b
    return v3

    .line 1547
    :cond_8c
    const/16 v3, 0x265

    move/from16 v0, p1

    if-ne v0, v3, :cond_b7

    .line 1549
    const/4 v3, 0x2

    aget-object v22, p3, v3

    .line 1550
    .local v22, "path":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v3, v0

    const/4 v4, 0x3

    if-le v3, v4, :cond_b4

    const/4 v3, 0x3

    aget-object v28, p3, v3

    .line 1552
    .local v28, "uuid":Ljava/lang/String;
    :goto_9e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/storage/StorageVolume;

    .line 1553
    .local v29, "vol":Landroid/os/storage/StorageVolume;
    if-eqz v29, :cond_8a

    .line 1554
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->setUuid(Ljava/lang/String;)V

    goto :goto_8a

    .line 1550
    .end local v28    # "uuid":Ljava/lang/String;
    .end local v29    # "vol":Landroid/os/storage/StorageVolume;
    :cond_b4
    const/16 v28, 0x0

    goto :goto_9e

    .line 1556
    .end local v22    # "path":Ljava/lang/String;
    :cond_b7
    const/16 v3, 0x266

    move/from16 v0, p1

    if-ne v0, v3, :cond_e2

    .line 1558
    const/4 v3, 0x2

    aget-object v22, p3, v3

    .line 1559
    .restart local v22    # "path":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v3, v0

    const/4 v4, 0x3

    if-le v3, v4, :cond_df

    const/4 v3, 0x3

    aget-object v27, p3, v3

    .line 1561
    .local v27, "userLabel":Ljava/lang/String;
    :goto_c9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/storage/StorageVolume;

    .line 1562
    .restart local v29    # "vol":Landroid/os/storage/StorageVolume;
    if-eqz v29, :cond_8a

    .line 1563
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->setUserLabel(Ljava/lang/String;)V

    goto :goto_8a

    .line 1559
    .end local v27    # "userLabel":Ljava/lang/String;
    .end local v29    # "vol":Landroid/os/storage/StorageVolume;
    :cond_df
    const/16 v27, 0x0

    goto :goto_c9

    .line 1565
    .end local v22    # "path":Ljava/lang/String;
    :cond_e2
    const/16 v3, 0x276

    move/from16 v0, p1

    if-eq v0, v3, :cond_f4

    const/16 v3, 0x277

    move/from16 v0, p1

    if-eq v0, v3, :cond_f4

    const/16 v3, 0x278

    move/from16 v0, p1

    if-ne v0, v3, :cond_2f3

    .line 1571
    :cond_f4
    const/4 v9, 0x0

    .line 1572
    .local v9, "action":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v18, p3, v3

    .line 1573
    .local v18, "label":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v22, p3, v3

    .line 1574
    .restart local v22    # "path":Ljava/lang/String;
    const/16 v20, -0x1

    .line 1575
    .local v20, "major":I
    const/16 v21, -0x1

    .line 1578
    .local v21, "minor":I
    const/4 v3, 0x6

    :try_start_100
    aget-object v3, p3, v3

    const/4 v4, 0x1

    const/4 v5, 0x6

    aget-object v5, p3, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1579
    .local v13, "devComp":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1580
    .local v14, "devTok":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1581
    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_123} :catch_195

    move-result v21

    .line 1588
    .end local v13    # "devComp":Ljava/lang/String;
    .end local v14    # "devTok":[Ljava/lang/String;
    :goto_124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1589
    :try_start_129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/storage/StorageVolume;

    .line 1590
    .local v30, "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 1591
    .local v25, "state":Ljava/lang/String;
    monitor-exit v4
    :try_end_142
    .catchall {:try_start_129 .. :try_end_142} :catchall_19e

    .line 1593
    const/16 v3, 0x276

    move/from16 v0, p1

    if-ne v0, v3, :cond_1a4

    .line 1601
    sget-object v3, Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_178

    .line 1604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1605
    :try_start_157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/storage/StorageVolume;

    .line 1606
    .local v23, "primaryVolume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_164
    .catchall {:try_start_157 .. :try_end_164} :catchall_1a1

    .line 1607
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1608
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 1609
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1610
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    .line 1612
    .end local v23    # "primaryVolume":Landroid/os/storage/StorageVolume;
    :cond_178
    new-instance v3, Lcom/android/server/MountService$9;

    const-string v4, "MountService#VolumeDiskInserted"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v4, v1}, Lcom/android/server/MountService$9;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/MountService$9;->start()V

    .line 1662
    const-string v9, "android.intent.action.SD_INSERTED"

    .line 1751
    :cond_188
    :goto_188
    if-eqz v9, :cond_8a

    .line 1752
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v9, v1, v3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_8a

    .line 1582
    .end local v25    # "state":Ljava/lang/String;
    .end local v30    # "volume":Landroid/os/storage/StorageVolume;
    :catch_195
    move-exception v15

    .line 1583
    .local v15, "ex":Ljava/lang/Exception;
    const-string v3, "MountService"

    const-string v4, "Failed to parse major/minor"

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_124

    .line 1591
    .end local v15    # "ex":Ljava/lang/Exception;
    :catchall_19e
    move-exception v3

    :try_start_19f
    monitor-exit v4
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_19e

    throw v3

    .line 1606
    .restart local v25    # "state":Ljava/lang/String;
    .restart local v30    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_1a1
    move-exception v3

    :try_start_1a2
    monitor-exit v4
    :try_end_1a3
    .catchall {:try_start_1a2 .. :try_end_1a3} :catchall_1a1

    throw v3

    .line 1663
    :cond_1a4
    const/16 v3, 0x277

    move/from16 v0, p1

    if-ne v0, v3, :cond_22e

    .line 1664
    sget-object v3, Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ce

    .line 1665
    const-string v3, "MountService"

    const-string v4, "[SWAP] removed MTK_2SDCARD_SWAP"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/MountService;->mUnmountSwap:Z

    .line 1667
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 1668
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1669
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    .line 1670
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/MountService;->mUnmountSwap:Z

    .line 1675
    :cond_1ce
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1eb

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bad_removal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1eb

    .line 1676
    const/4 v3, 0x1

    goto/16 :goto_8b

    .line 1678
    :cond_1eb
    const-string v3, "MountService"

    const-string v4, "Sending eject event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1681
    const-string v3, "MountService"

    const-string v4, "Sending unmounted event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    const-string v3, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    const-string v3, "unmounted"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1688
    const-string v3, "MountService"

    const-string v4, "Sending media removed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    const-string v3, "removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1690
    const-string v9, "android.intent.action.MEDIA_REMOVED"

    goto/16 :goto_188

    .line 1701
    :cond_22e
    const/16 v3, 0x278

    move/from16 v0, p1

    if-ne v0, v3, :cond_2cd

    .line 1711
    const-string v3, "MountService"

    const-string v4, "Sending eject event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1714
    sget-object v3, Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26d

    .line 1716
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1717
    :try_start_255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    const-string v5, "/storage/sdcard1"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/storage/StorageVolume;

    .line 1718
    .local v24, "secondaryVolume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_262
    .catchall {:try_start_255 .. :try_end_262} :catchall_2ca

    .line 1719
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1721
    .end local v24    # "secondaryVolume":Landroid/os/storage/StorageVolume;
    :cond_26d
    const-string v3, "MountService"

    const-string v4, "Sending unmounted event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    const-string v3, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1726
    const-string v3, "MountService"

    const-string v4, "Sending media bad removal"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    const-string v3, "bad_removal"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1728
    const-string v9, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 1739
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->getDefaultPath()Ljava/lang/String;

    move-result-object v12

    .line 1740
    .local v12, "defaultPath":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1742
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->enableDefaultToast()Z

    move-result v3

    if-eqz v3, :cond_188

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_188

    .line 1743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const v5, 0x2050079

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_188

    .line 1718
    .end local v12    # "defaultPath":Ljava/lang/String;
    :catchall_2ca
    move-exception v3

    :try_start_2cb
    monitor-exit v4
    :try_end_2cc
    .catchall {:try_start_2cb .. :try_end_2cc} :catchall_2ca

    throw v3

    .line 1745
    :cond_2cd
    const/16 v3, 0x2bc

    move/from16 v0, p1

    if-ne v0, v3, :cond_2dc

    .line 1746
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/EventLogTags;->writeFstrimFinish(J)V

    goto/16 :goto_188

    .line 1748
    :cond_2dc
    const-string v3, "MountService"

    const-string v4, "Unknown code {%d}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_188

    .line 1754
    .end local v9    # "action":Ljava/lang/String;
    .end local v18    # "label":Ljava/lang/String;
    .end local v20    # "major":I
    .end local v21    # "minor":I
    .end local v22    # "path":Ljava/lang/String;
    .end local v25    # "state":Ljava/lang/String;
    .end local v30    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2f3
    const/16 v3, 0x279

    move/from16 v0, p1

    if-ne v0, v3, :cond_33e

    .line 1756
    const/4 v9, 0x0

    .line 1757
    .restart local v9    # "action":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v18, p3, v3

    .line 1758
    .restart local v18    # "label":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v22, p3, v3

    .line 1761
    .restart local v22    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1762
    :try_start_305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/storage/StorageVolume;

    .line 1763
    .restart local v30    # "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_312
    .catchall {:try_start_305 .. :try_end_312} :catchall_33b

    .line 1764
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoldResponseCode.VolumeEjectBeforeSwap: send eject to volume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_8a

    .line 1763
    .end local v30    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_33b
    move-exception v3

    :try_start_33c
    monitor-exit v4
    :try_end_33d
    .catchall {:try_start_33c .. :try_end_33d} :catchall_33b

    throw v3

    .line 1767
    .end local v9    # "action":Ljava/lang/String;
    .end local v18    # "label":Ljava/lang/String;
    .end local v22    # "path":Ljava/lang/String;
    :cond_33e
    const/16 v3, 0x27a

    move/from16 v0, p1

    if-ne v0, v3, :cond_3cf

    .line 1768
    const/4 v9, 0x0

    .line 1769
    .restart local v9    # "action":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v18, p3, v3

    .line 1770
    .restart local v18    # "label":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v22, p3, v3

    .line 1773
    .restart local v22    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1774
    :try_start_350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/storage/StorageVolume;

    .line 1775
    .restart local v30    # "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_35d
    .catchall {:try_start_350 .. :try_end_35d} :catchall_3cc

    .line 1776
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoldResponseCode.VolumeUnmountable: send MEDIA_UNMOUNTABLE to volume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    const-string v3, "unmountable"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1778
    const-string v3, "android.intent.action.MEDIA_UNMOUNTABLE"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1779
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1780
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 1782
    new-instance v17, Landroid/content/Intent;

    const-string v3, "com.mediatek.SD_SWAP"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1783
    .local v17, "intent":Landroid/content/Intent;
    const-string v3, "SD_EXIST"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1784
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSDSwapIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_8a

    .line 1775
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v30    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_3cc
    move-exception v3

    :try_start_3cd
    monitor-exit v4
    :try_end_3ce
    .catchall {:try_start_3cd .. :try_end_3ce} :catchall_3cc

    throw v3

    .line 1786
    .end local v9    # "action":Ljava/lang/String;
    .end local v18    # "label":Ljava/lang/String;
    .end local v22    # "path":Ljava/lang/String;
    :cond_3cf
    const/16 v3, 0x262

    move/from16 v0, p1

    if-ne v0, v3, :cond_460

    .line 1787
    const/4 v9, 0x0

    .line 1788
    .restart local v9    # "action":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v18, p3, v3

    .line 1789
    .restart local v18    # "label":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v22, p3, v3

    .line 1792
    .restart local v22    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1793
    :try_start_3e1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/storage/StorageVolume;

    .line 1794
    .restart local v30    # "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_3ee
    .catchall {:try_start_3e1 .. :try_end_3ee} :catchall_45d

    .line 1795
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoldResponseCode.VolumeMountFailedBlank: send MEDIA_NOFS to volume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const-string v3, "nofs"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1797
    const-string v3, "android.intent.action.MEDIA_NOFS"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1798
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1799
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 1801
    new-instance v17, Landroid/content/Intent;

    const-string v3, "com.mediatek.SD_SWAP"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1802
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v3, "SD_EXIST"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1803
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSDSwapIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_8a

    .line 1794
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v30    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_45d
    move-exception v3

    :try_start_45e
    monitor-exit v4
    :try_end_45f
    .catchall {:try_start_45e .. :try_end_45f} :catchall_45d

    throw v3

    .line 1806
    .end local v9    # "action":Ljava/lang/String;
    .end local v18    # "label":Ljava/lang/String;
    .end local v22    # "path":Ljava/lang/String;
    :cond_460
    const/4 v3, 0x0

    goto/16 :goto_8b
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 2592
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2593
    :try_start_3
    const-string v2, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mount service registerListener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    new-instance v0, Lcom/android/server/MountService$MountServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountServiceBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_38

    .line 2596
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_20
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2597
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2d} :catch_2f
    .catchall {:try_start_20 .. :try_end_2d} :catchall_38

    .line 2601
    :goto_2d
    :try_start_2d
    monitor-exit v3

    .line 2602
    return-void

    .line 2598
    :catch_2f
    move-exception v1

    .line 2599
    .local v1, "rex":Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 2601
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "rex":Landroid/os/RemoteException;
    :catchall_38
    move-exception v2

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_38

    throw v2
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "oldId"    # Ljava/lang/String;
    .param p2, "newId"    # Ljava/lang/String;

    .prologue
    .line 3257
    const-string v2, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3258
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3259
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3261
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 3266
    :try_start_e
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3267
    :cond_1e
    const/4 v1, -0x6

    monitor-exit v3

    .line 3278
    :goto_20
    return v1

    .line 3269
    :cond_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_3c

    .line 3271
    const/4 v1, 0x0

    .line 3273
    .local v1, "rc":I
    :try_start_23
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "rename"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_38
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_23 .. :try_end_38} :catch_39

    goto :goto_20

    .line 3274
    :catch_39
    move-exception v0

    .line 3275
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_20

    .line 3269
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v1    # "rc":I
    :catchall_3c
    move-exception v2

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method public setUsbMassStorageEnabled(Z)V
    .registers 20
    .param p1, "enable"    # Z

    .prologue
    .line 2749
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2750
    const-string v14, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2764
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 2765
    .local v5, "mState":Ljava/lang/String;
    if-eqz p1, :cond_18

    const-string v14, "mounted"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 2769
    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v15

    .line 2770
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 2771
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    .line 2772
    .local v2, "count":I
    new-array v14, v2, [Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 2773
    .local v8, "paths":[Ljava/lang/String;
    new-array v11, v2, [Ljava/lang/String;

    .line 2774
    .local v11, "states":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    if-ge v3, v2, :cond_49

    .line 2775
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    aget-object v16, v8, v3

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v11, v3

    .line 2774
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 2777
    :cond_49
    monitor-exit v15
    :try_end_4a
    .catchall {:try_start_1d .. :try_end_4a} :catchall_94

    .line 2779
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 2780
    add-int/lit8 v3, v2, -0x1

    :goto_51
    if-ltz v3, :cond_1bd

    .line 2781
    aget-object v7, v8, v3

    .line 2782
    .local v7, "path":Ljava/lang/String;
    aget-object v10, v11, v3

    .line 2783
    .local v10, "state":Ljava/lang/String;
    const-string v6, "ums"

    .line 2785
    .local v6, "method":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2786
    :try_start_5e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    .line 2787
    .local v13, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v14

    if-eqz v14, :cond_97

    .line 2788
    const-string v14, "MountService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Emulated volume: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", no need share!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    monitor-exit v15
    :try_end_91
    .catchall {:try_start_5e .. :try_end_91} :catchall_c9

    .line 2780
    :cond_91
    :goto_91
    add-int/lit8 v3, v3, -0x1

    goto :goto_51

    .line 2777
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "paths":[Ljava/lang/String;
    .end local v10    # "state":Ljava/lang/String;
    .end local v11    # "states":[Ljava/lang/String;
    .end local v13    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_94
    move-exception v14

    :try_start_95
    monitor-exit v15
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v14

    .line 2792
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "method":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "paths":[Ljava/lang/String;
    .restart local v10    # "state":Ljava/lang/String;
    .restart local v11    # "states":[Ljava/lang/String;
    .restart local v13    # "volume":Landroid/os/storage/StorageVolume;
    :cond_97
    :try_start_97
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v14

    const-string v16, "/mnt/udisk/folder1"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_cc

    .line 2793
    const-string v14, "MountService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ICUSB: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", no need share!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    monitor-exit v15

    goto :goto_91

    .line 2796
    .end local v13    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_c9
    move-exception v14

    monitor-exit v15
    :try_end_cb
    .catchall {:try_start_97 .. :try_end_cb} :catchall_c9

    throw v14

    .restart local v13    # "volume":Landroid/os/storage/StorageVolume;
    :cond_cc
    :try_start_cc
    monitor-exit v15
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_c9

    .line 2798
    if-eqz p1, :cond_16e

    const-string v14, "mounted"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16e

    .line 2799
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    .line 2800
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService;->mUMSCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/MountService;->mUMSCount:I

    .line 2805
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/MountService;->isExternalStorage(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11f

    sget-object v14, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11f

    .line 2807
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mUnmountSwap:Z

    .line 2808
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7}, Lcom/android/server/MountService;->updateDefaultPathForSwap(ZLjava/lang/String;)V

    .line 2809
    const-string v14, "MountService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MTK_SHARED_SDCARD is enabled, need to swap sd when UMS is enabled: mUnmountSwap: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService;->mUnmountSwap:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    :cond_11f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 2813
    new-instance v12, Lcom/android/server/MountService$UmsEnableCallBack;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v7, v6, v14}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2814
    .local v12, "umscb":Lcom/android/server/MountService$UmsEnableCallBack;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2816
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 2823
    .end local v12    # "umscb":Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_143
    :goto_143
    if-nez p1, :cond_91

    const-string v14, "removed"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_91

    const-string v14, "bad_removal"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_91

    .line 2825
    const/16 v9, 0xf

    .line 2826
    .local v9, "retry":I
    :goto_157
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService;->mUMSCount:I

    if-lez v14, :cond_180

    if-lez v9, :cond_180

    .line 2827
    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    .line 2828
    add-int/lit8 v9, v9, -0x1

    .line 2829
    const-string v14, "MountService"

    const-string v15, "Turn off UMS, wait for turn on UMS done!"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_157

    .line 2817
    .end local v9    # "retry":I
    :cond_16e
    if-eqz p1, :cond_143

    const-string v14, "unmounted"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_143

    .line 2818
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v6, v1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_143

    .line 2831
    .restart local v9    # "retry":I
    :cond_180
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    .line 2832
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v6, v1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2833
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/MountService;->mountVolume(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_1b6

    .line 2834
    const-string v14, "MountService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to remount "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " after disabling share method "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    :cond_1b6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    goto/16 :goto_91

    .line 2845
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v9    # "retry":I
    .end local v10    # "state":Ljava/lang/String;
    .end local v13    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1bd
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 2846
    return-void
.end method

.method public shareCDRom(Z)V
    .registers 6
    .param p1, "share"    # Z

    .prologue
    .line 4564
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shareCDRom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    move v0, p1

    .line 4566
    .local v0, "doShare":Z
    new-instance v1, Lcom/android/server/MountService$13;

    invoke-direct {v1, p0, v0}, Lcom/android/server/MountService$13;-><init>(Lcom/android/server/MountService;Z)V

    invoke-virtual {v1}, Lcom/android/server/MountService$13;->start()V

    .line 4582
    return-void
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .registers 16
    .param p1, "observer"    # Landroid/os/storage/IMountShutdownObserver;

    .prologue
    .line 2619
    const-string v11, "android.permission.SHUTDOWN"

    invoke-direct {p0, v11}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2621
    const-string v11, "MountService"

    const-string v12, "Shutting down"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 2623
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 2624
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    .line 2626
    iget-object v12, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2627
    :try_start_18
    new-instance v7, Ljava/util/HashMap;

    iget-object v11, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-direct {v7, v11}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2628
    .local v7, "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v12
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_80

    .line 2631
    sget-object v11, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2632
    .local v3, "mState":Ljava/lang/String;
    const-string v11, "mounted"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_83

    .line 2633
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    .line 2634
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    .line 2639
    :cond_34
    :goto_34
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3c
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_df

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2640
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2642
    .local v8, "state":Ljava/lang/String;
    const-string v11, "shared"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8f

    .line 2652
    const-string v11, "ums"

    const/4 v12, 0x0

    invoke-direct {p0, v4, v11, v12}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2674
    :cond_5c
    :goto_5c
    const-string v11, "mounted"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3c

    .line 2682
    iget-object v12, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2683
    :try_start_67
    iget-object v11, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageVolume;

    .line 2684
    .local v10, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v12
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_c3

    .line 2685
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v11

    if-eqz v11, :cond_c6

    .line 2686
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v11

    if-eqz v11, :cond_3c

    .line 2687
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    goto :goto_3c

    .line 2628
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "mState":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v7    # "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "state":Ljava/lang/String;
    .end local v10    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_80
    move-exception v11

    :try_start_81
    monitor-exit v12
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v11

    .line 2635
    .restart local v3    # "mState":Ljava/lang/String;
    .restart local v7    # "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_83
    const-string v11, "shared"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_34

    .line 2636
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    goto :goto_34

    .line 2653
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v8    # "state":Ljava/lang/String;
    :cond_8f
    const-string v11, "checking"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 2659
    const/16 v5, 0x1e

    .line 2660
    .local v5, "retries":I
    :goto_99
    const-string v11, "checking"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b9

    add-int/lit8 v6, v5, -0x1

    .end local v5    # "retries":I
    .local v6, "retries":I
    if-ltz v5, :cond_fb

    .line 2662
    const-wide/16 v11, 0x3e8

    :try_start_a7
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_aa
    .catch Ljava/lang/InterruptedException; {:try_start_a7 .. :try_end_aa} :catch_b0

    .line 2667
    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v5, v6

    .end local v6    # "retries":I
    .restart local v5    # "retries":I
    goto :goto_99

    .line 2663
    .end local v5    # "retries":I
    .restart local v6    # "retries":I
    :catch_b0
    move-exception v2

    .line 2664
    .local v2, "iex":Ljava/lang/InterruptedException;
    const-string v11, "MountService"

    const-string v12, "Interrupted while waiting for media"

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 2669
    .end local v2    # "iex":Ljava/lang/InterruptedException;
    .end local v6    # "retries":I
    .restart local v5    # "retries":I
    :cond_b9
    :goto_b9
    if-nez v5, :cond_5c

    .line 2670
    const-string v11, "MountService"

    const-string v12, "Timed out waiting for media to check"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 2684
    .end local v5    # "retries":I
    :catchall_c3
    move-exception v11

    :try_start_c4
    monitor-exit v12
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v11

    .line 2692
    .restart local v10    # "volume":Landroid/os/storage/StorageVolume;
    :cond_c6
    iget v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 2694
    new-instance v9, Lcom/android/server/MountService$ShutdownCallBack;

    invoke-direct {v9, p0, v4, p1}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V

    .line 2695
    .local v9, "ucb":Lcom/android/server/MountService$ShutdownCallBack;
    iget-object v11, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3c

    .line 2698
    .end local v4    # "path":Ljava/lang/String;
    .end local v8    # "state":Ljava/lang/String;
    .end local v9    # "ucb":Lcom/android/server/MountService$ShutdownCallBack;
    .end local v10    # "volume":Landroid/os/storage/StorageVolume;
    :cond_df
    iget v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    if-gtz v11, :cond_e9

    if-eqz p1, :cond_e9

    .line 2705
    const/4 v11, 0x0

    :try_start_e6
    invoke-interface {p1, v11}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_e9} :catch_f2

    .line 2711
    :cond_e9
    :goto_e9
    new-instance v11, Lcom/android/server/MountService$11;

    invoke-direct {v11, p0}, Lcom/android/server/MountService$11;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v11}, Lcom/android/server/MountService$11;->start()V

    .line 2723
    return-void

    .line 2706
    :catch_f2
    move-exception v0

    .line 2707
    .local v0, "e":Landroid/os/RemoteException;
    const-string v11, "MountService"

    const-string v12, "RemoteException when shutting down"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e9

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v6    # "retries":I
    .restart local v8    # "state":Ljava/lang/String;
    :cond_fb
    move v5, v6

    .end local v6    # "retries":I
    .restart local v5    # "retries":I
    goto :goto_b9
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 2583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mSystemReady:Z

    .line 2584
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2585
    return-void
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 14
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "token"    # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"    # I

    .prologue
    .line 3402
    const-string v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3405
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    monitor-enter v2

    .line 3406
    :try_start_8
    iget-object v1, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/MountService$ObbState;

    .line 3407
    .local v8, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_34

    .line 3409
    if-eqz v8, :cond_37

    .line 3411
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3412
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    iget-object v3, v8, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 3414
    .local v0, "newState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v7, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 3415
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3422
    .end local v0    # "newState":Lcom/android/server/MountService$ObbState;
    .end local v4    # "callingUid":I
    .end local v7    # "action":Lcom/android/server/MountService$ObbAction;
    :goto_33
    return-void

    .line 3407
    .end local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1

    .line 3420
    .restart local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_37
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown OBB mount at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 3203
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3204
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3205
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3207
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 3208
    :try_start_e
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 3209
    const/4 v3, -0x5

    monitor-exit v5

    .line 3243
    :cond_18
    :goto_18
    return v3

    .line 3211
    :cond_19
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_52

    .line 3219
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 3220
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 3222
    const/4 v3, 0x0

    .line 3224
    .local v3, "rc":I
    :try_start_25
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "unmount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3225
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_3e

    .line 3226
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3228
    :cond_3e
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_43
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_25 .. :try_end_43} :catch_55

    .line 3238
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_43
    if-nez v3, :cond_18

    .line 3239
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 3240
    :try_start_48
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3241
    monitor-exit v5

    goto :goto_18

    :catchall_4f
    move-exception v4

    monitor-exit v5
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_4f

    throw v4

    .line 3211
    .end local v3    # "rc":I
    :catchall_52
    move-exception v4

    :try_start_53
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v4

    .line 3229
    .restart local v3    # "rc":I
    :catch_55
    move-exception v2

    .line 3230
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 3231
    .local v1, "code":I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_60

    .line 3232
    const/4 v3, -0x7

    goto :goto_43

    .line 3234
    :cond_60
    const/4 v3, -0x1

    goto :goto_43
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/4 v6, 0x1

    .line 2937
    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2938
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2940
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2942
    .local v2, "volState":Ljava/lang/String;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unmounting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " removeEncryption = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isExternalStorage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    sget-object v3, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 2948
    iput-boolean v6, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    .line 2949
    const/4 v3, 0x0

    invoke-direct {p0, v3, p1}, Lcom/android/server/MountService;->updateDefaultPathForSwap(ZLjava/lang/String;)V

    .line 2951
    :try_start_4d
    const-string v3, "MountService"

    const-string v4, "set prop"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    const-string v3, "sys.sd.swapping"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_5b} :catch_7c

    .line 2957
    :cond_5b
    :goto_5b
    const-string v3, "unmounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "removed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "shared"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "unmountable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 2967
    :cond_7b
    :goto_7b
    return-void

    .line 2953
    :catch_7c
    move-exception v0

    .line 2954
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "MountService"

    const-string v4, "IllegalArgumentException when set default path:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    .line 2965
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_85
    new-instance v1, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 2966
    .local v1, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7b
.end method

.method public unmountVolumeForUserSwitch(Ljava/lang/String;ZZ)V
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/4 v5, 0x1

    .line 2970
    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2971
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2973
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2975
    .local v6, "volState":Ljava/lang/String;
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User Switch Unmounting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " force = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removeEncryption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isExternalStorage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    sget-object v1, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 2981
    iput-boolean v5, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    .line 2982
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/server/MountService;->updateDefaultPathForSwap(ZLjava/lang/String;)V

    .line 2984
    :cond_4d
    const-string v1, "unmounted"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "removed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "shared"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "unmountable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 3005
    :cond_6d
    :goto_6d
    return-void

    .line 2994
    :cond_6e
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2995
    :try_start_71
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageVolume;

    .line 2996
    .local v7, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_b5

    .line 2997
    const-string v1, "unmounted"

    invoke-direct {p0, v7, v1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 2998
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    if-eqz v1, :cond_99

    iget-boolean v1, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-nez v1, :cond_99

    iget-boolean v1, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-nez v1, :cond_99

    iget-boolean v1, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-nez v1, :cond_99

    .line 2999
    const-string v1, "MountService"

    const-string v2, "updateDefaultpath Environment.MEDIA_UNMOUNTED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 3002
    :cond_99
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v7, v2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 3003
    new-instance v0, Lcom/android/server/MountService$UnmountCallBack;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZZ)V

    .line 3004
    .local v0, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    iget-object v1, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6d

    .line 2996
    .end local v0    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_b5
    move-exception v1

    :try_start_b6
    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v1
.end method

.method public unmountVolumeNotSwap(Ljava/lang/String;ZZ)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    .line 4588
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 4589
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 4591
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4593
    .local v1, "volState":Ljava/lang/String;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unmounting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " removeEncryption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4598
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 4608
    :cond_58
    :goto_58
    return-void

    .line 4606
    :cond_59
    new-instance v0, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 4607
    .local v0, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_58
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 2605
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2606
    :try_start_3
    const-string v2, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mount service unregisterListener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;

    .line 2608
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    const-string v2, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mount service mListeners bl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    iget-object v2, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    if-ne v2, p1, :cond_21

    .line 2610
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2611
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2612
    monitor-exit v3

    .line 2616
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :goto_5d
    return-void

    .line 2615
    :cond_5e
    monitor-exit v3

    goto :goto_5d

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_60
    move-exception v2

    monitor-exit v3
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v2
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .registers 9
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3541
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_10

    .line 3542
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "no permission to access the crypt keeper"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3545
    :cond_10
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3548
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3549
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3552
    :cond_27
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3555
    const-string v2, "MountService"

    const-string v3, "validating encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    :try_start_31
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "verifypw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3561
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cryptfs verifypw => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_31 .. :try_end_6c} :catch_6e

    move-result v2

    .line 3565
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_6d
    return v2

    .line 3563
    :catch_6e
    move-exception v0

    .line 3565
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_6d
.end method

.method waitForAsecScan()V
    .registers 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 790
    return-void
.end method
