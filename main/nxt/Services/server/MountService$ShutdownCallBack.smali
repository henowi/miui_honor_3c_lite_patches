.class Lcom/android/server/MountService$ShutdownCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShutdownCallBack"
.end annotation


# instance fields
.field observer:Landroid/os/storage/IMountShutdownObserver;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V
    .registers 6
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "observer"    # Landroid/os/storage/IMountShutdownObserver;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    .line 550
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 551
    iput-object p3, p0, Lcom/android/server/MountService$ShutdownCallBack;->observer:Landroid/os/storage/IMountShutdownObserver;

    .line 552
    return-void
.end method


# virtual methods
.method handleFinished()V
    .registers 7

    .prologue
    .line 556
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$ShutdownCallBack;->path:Ljava/lang/String;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/server/MountService$ShutdownCallBack;->removeEncryption:Z

    # invokes: Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/MountService;->access$100(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I

    move-result v1

    .line 557
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mShutdownRet:I
    invoke-static {v3}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)I

    move-result v3

    or-int/2addr v3, v1

    # setter for: Lcom/android/server/MountService;->mShutdownRet:I
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$1602(Lcom/android/server/MountService;I)I

    .line 558
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    # operator-- for: Lcom/android/server/MountService;->mShutdownCount:I
    invoke-static {v2}, Lcom/android/server/MountService;->access$1710(Lcom/android/server/MountService;)I

    .line 559
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mShutdownCount:I
    invoke-static {v2}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)I

    move-result v2

    if-gtz v2, :cond_45

    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->observer:Landroid/os/storage/IMountShutdownObserver;

    if-eqz v2, :cond_45

    .line 561
    :try_start_28
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/MountService;->mShutdownSD:Z
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$1802(Lcom/android/server/MountService;Z)Z

    .line 562
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/MountService;->mUnmountPrimary:Z
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$1502(Lcom/android/server/MountService;Z)Z

    .line 563
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->observer:Landroid/os/storage/IMountShutdownObserver;

    iget-object v3, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mShutdownRet:I
    invoke-static {v3}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V

    .line 564
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/MountService;->mShutdownRet:I
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$1602(Lcom/android/server/MountService;I)I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_45} :catch_46

    .line 569
    :cond_45
    :goto_45
    return-void

    .line 565
    :catch_46
    move-exception v0

    .line 566
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v3, "RemoteException when shutting down"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method
