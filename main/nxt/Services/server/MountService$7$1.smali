.class Lcom/android/server/MountService$7$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$7;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$7;)V
    .registers 2

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/android/server/MountService$7$1;->this$1:Lcom/android/server/MountService$7;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 1197
    const-string v12, "MountService"

    const-string v13, "MountService BOOT_IPO!"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :try_start_7
    const-string v12, "MountService"

    const-string v13, "Notify VOLD IPO startup"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$7$1;->this$1:Lcom/android/server/MountService$7;

    iget-object v12, v12, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v12}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v12

    const-string v13, "volume"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ipo"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "startup"

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2a} :catch_95

    .line 1205
    :goto_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$7$1;->this$1:Lcom/android/server/MountService$7;

    iget-object v12, v12, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x1

    # setter for: Lcom/android/server/MountService;->mFirstTime_SwapStateForSDSwapMountPoint:Z
    invoke-static {v12, v13}, Lcom/android/server/MountService;->access$3702(Lcom/android/server/MountService;Z)Z

    .line 1206
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$7$1;->this$1:Lcom/android/server/MountService$7;

    iget-object v12, v12, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v12}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)V

    .line 1209
    :try_start_3d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$7$1;->this$1:Lcom/android/server/MountService$7;

    iget-object v12, v12, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v12}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v12

    const-string v13, "volume"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "list"

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v12

    const/16 v13, 0x6e

    invoke-static {v12, v13}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v9

    .line 1212
    .local v9, "vols":[Ljava/lang/String;
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_5e
    if-ge v3, v4, :cond_a9

    aget-object v10, v1, v3

    .line 1213
    .local v10, "volstr":Ljava/lang/String;
    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1215
    .local v8, "tok":[Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v5, v8, v12

    .line 1216
    .local v5, "path":Ljava/lang/String;
    const-string v7, "removed"

    .line 1219
    .local v7, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$7$1;->this$1:Lcom/android/server/MountService$7;

    iget-object v12, v12, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v12}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_78} :catch_a1

    .line 1220
    :try_start_78
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$7$1;->this$1:Lcom/android/server/MountService$7;

    iget-object v12, v12, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/StorageVolume;

    .line 1221
    .local v11, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v13
    :try_end_89
    .catchall {:try_start_78 .. :try_end_89} :catchall_9e

    .line 1222
    if-nez v11, :cond_b3

    .line 1223
    :try_start_8b
    const-string v12, "MountService"

    const-string v13, "Error processing initial volume state:  volume == null"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_92} :catch_a1

    .line 1212
    :cond_92
    :goto_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 1201
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "state":Ljava/lang/String;
    .end local v8    # "tok":[Ljava/lang/String;
    .end local v9    # "vols":[Ljava/lang/String;
    .end local v10    # "volstr":Ljava/lang/String;
    .end local v11    # "volume":Landroid/os/storage/StorageVolume;
    :catch_95
    move-exception v2

    .line 1202
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "MountService"

    const-string v13, "Error reinit SD card while IPO"

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 1221
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "state":Ljava/lang/String;
    .restart local v8    # "tok":[Ljava/lang/String;
    .restart local v9    # "vols":[Ljava/lang/String;
    .restart local v10    # "volstr":Ljava/lang/String;
    :catchall_9e
    move-exception v12

    :try_start_9f
    monitor-exit v13
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    :try_start_a0
    throw v12
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a1} :catch_a1

    .line 1251
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "state":Ljava/lang/String;
    .end local v8    # "tok":[Ljava/lang/String;
    .end local v9    # "vols":[Ljava/lang/String;
    .end local v10    # "volstr":Ljava/lang/String;
    :catch_a1
    move-exception v2

    .line 1252
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v12, "MountService"

    const-string v13, "Error processing initial volume state"

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1258
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$7$1;->this$1:Lcom/android/server/MountService$7;

    iget-object v12, v12, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static {v12}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)V

    .line 1259
    return-void

    .line 1227
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "state":Ljava/lang/String;
    .restart local v8    # "tok":[Ljava/lang/String;
    .restart local v9    # "vols":[Ljava/lang/String;
    .restart local v10    # "volstr":Ljava/lang/String;
    .restart local v11    # "volume":Landroid/os/storage/StorageVolume;
    :cond_b3
    const/4 v12, 0x2

    :try_start_b4
    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1228
    .local v6, "st":I
    if-nez v6, :cond_f2

    .line 1229
    const-string v7, "removed"

    .line 1242
    :goto_be
    if-eqz v7, :cond_92

    .line 1243
    const-string v12, "MountService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating valid state "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    # getter for: Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$3300()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_128

    const-string v12, "removed"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_128

    .line 1245
    const-string v12, "MountService"

    const-string v13, "do not update /storage/usbotg MEDIA_REMOVED state in IPO"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 1230
    :cond_f2
    const/4 v12, 0x1

    if-ne v6, v12, :cond_f8

    .line 1231
    const-string v7, "unmounted"

    goto :goto_be

    .line 1232
    :cond_f8
    const/4 v12, 0x4

    if-ne v6, v12, :cond_105

    .line 1233
    const-string v7, "mounted"

    .line 1234
    const-string v12, "MountService"

    const-string v13, "Media already mounted on daemon connection"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 1235
    :cond_105
    const/4 v12, 0x7

    if-ne v6, v12, :cond_112

    .line 1236
    const-string v7, "shared"

    .line 1237
    const-string v12, "MountService"

    const-string v13, "Media shared on daemon connection"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 1239
    :cond_112
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "Unexpected state %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1247
    :cond_128
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$7$1;->this$1:Lcom/android/server/MountService$7;

    iget-object v12, v12, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v12, v11, v7}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_131} :catch_a1

    goto/16 :goto_92
.end method
