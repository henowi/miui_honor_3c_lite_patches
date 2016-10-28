.class Lcom/android/server/MountService$6$2;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$6;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$6;)V
    .registers 2

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/android/server/MountService$6$2;->this$1:Lcom/android/server/MountService$6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1079
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService$6$2;->this$1:Lcom/android/server/MountService$6;

    iget-object v1, v1, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/MountService;->enableUSBFuction(Z)V
    invoke-static {v1, v2}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 1083
    :goto_8
    return-void

    .line 1080
    :catch_9
    move-exception v0

    .line 1081
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "MountService"

    const-string v2, "Privacy Protection lock"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method
