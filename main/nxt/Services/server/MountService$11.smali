.class Lcom/android/server/MountService$11;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .registers 2

    .prologue
    .line 2711
    iput-object p1, p0, Lcom/android/server/MountService$11;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2715
    :try_start_0
    const-string v1, "MountService"

    const-string v2, "Notify VOLD IPO shutdown"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    iget-object v1, p0, Lcom/android/server/MountService$11;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v1}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v1

    const-string v2, "volume"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ipo"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "shutdown"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 2720
    :goto_1f
    return-void

    .line 2717
    :catch_20
    move-exception v0

    .line 2718
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MountService"

    const-string v2, "Error to notify VOLD IPO shutdown"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method
