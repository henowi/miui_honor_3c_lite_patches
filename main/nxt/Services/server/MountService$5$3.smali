.class Lcom/android/server/MountService$5$3;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$5;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$5;)V
    .registers 2

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 1013
    # getter for: Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/MountService;->access$3100()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 1014
    :try_start_5
    iget-object v7, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v7, v7, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1015
    .local v3, "length":I
    const/4 v5, 0x0

    .line 1016
    .local v5, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v3, :cond_a4

    .line 1017
    iget-object v7, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v7, v7, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_99

    move-result-object v5

    .line 1019
    :try_start_27
    iget-object v7, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v7, v7, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7, v5}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1020
    .local v4, "mCurState":Ljava/lang/String;
    const-string v7, "MountService"

    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v7, "mounted"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 1023
    iget-object v7, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v7, v7, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v5, v9, v10}, Lcom/android/server/MountService;->unmountVolumeNotSwap(Ljava/lang/String;ZZ)V

    .line 1028
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_46
    const/16 v7, 0x14

    if-ge v2, v7, :cond_66

    .line 1029
    const-wide/16 v9, 0x3e8

    invoke-static {v9, v10}, Lcom/android/server/MountService$5$3;->sleep(J)V

    .line 1030
    iget-object v7, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v7, v7, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7, v5}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1031
    const-string v7, "unmounted"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 1032
    const-string v7, "MountService"

    const-string v9, "Unmount Succeeded!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    .end local v2    # "j":I
    :cond_66
    :goto_66
    iget-object v7, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v7, v7, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7, v5}, Lcom/android/server/MountService;->formatVolume(Ljava/lang/String;)I

    move-result v6

    .line 1042
    .local v6, "ret":I
    if-nez v6, :cond_9c

    .line 1043
    const-string v7, "MountService"

    const-string v9, "SD format Succeed!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    .end local v4    # "mCurState":Ljava/lang/String;
    .end local v6    # "ret":I
    :goto_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1028
    .restart local v2    # "j":I
    .restart local v4    # "mCurState":Ljava/lang/String;
    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 1037
    .end local v2    # "j":I
    :cond_7d
    const-string v7, "shared"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 1038
    iget-object v7, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v7, v7, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const-string v9, "ums"

    const/4 v10, 0x0

    # invokes: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v7, v5, v9, v10}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_8f} :catch_90
    .catchall {:try_start_27 .. :try_end_8f} :catchall_99

    goto :goto_66

    .line 1047
    .end local v4    # "mCurState":Ljava/lang/String;
    :catch_90
    move-exception v0

    .line 1048
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_91
    const-string v7, "MountService"

    const-string v9, "SD format exception"

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    .line 1051
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v3    # "length":I
    .end local v5    # "path":Ljava/lang/String;
    :catchall_99
    move-exception v7

    monitor-exit v8
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_99

    throw v7

    .line 1045
    .restart local v1    # "i":I
    .restart local v3    # "length":I
    .restart local v4    # "mCurState":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "ret":I
    :cond_9c
    :try_start_9c
    const-string v7, "MountService"

    const-string v9, "SD format Failed!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a3} :catch_90
    .catchall {:try_start_9c .. :try_end_a3} :catchall_99

    goto :goto_77

    .line 1051
    .end local v4    # "mCurState":Ljava/lang/String;
    .end local v6    # "ret":I
    :cond_a4
    :try_start_a4
    monitor-exit v8
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_99

    .line 1052
    return-void
.end method
