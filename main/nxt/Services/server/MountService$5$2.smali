.class Lcom/android/server/MountService$5$2;
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
    .line 998
    iput-object p1, p0, Lcom/android/server/MountService$5$2;->this$1:Lcom/android/server/MountService$5;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1000
    # getter for: Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/MountService;->access$3100()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1002
    :try_start_5
    iget-object v1, p0, Lcom/android/server/MountService$5$2;->this$1:Lcom/android/server/MountService$5;

    iget-object v1, v1, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/MountService;->enableUSBFuction(Z)V
    invoke-static {v1, v3}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_f
    .catchall {:try_start_5 .. :try_end_d} :catchall_18

    .line 1006
    :goto_d
    :try_start_d
    monitor-exit v2

    .line 1007
    return-void

    .line 1003
    :catch_f
    move-exception v0

    .line 1004
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "MountService"

    const-string v3, "USB disable exception"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1006
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_18

    throw v1
.end method
