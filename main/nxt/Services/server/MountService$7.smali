.class Lcom/android/server/MountService$7;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
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
    .line 1183
    iput-object p1, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1188
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1190
    const-string v1, "MountService"

    const-string v2, "MountService BOOT_COMPLETED!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v1, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/MountService;->mBootCompleted:Z
    invoke-static {v1, v2}, Lcom/android/server/MountService;->access$3602(Lcom/android/server/MountService;Z)Z

    .line 1262
    :goto_19
    return-void

    .line 1195
    :cond_1a
    new-instance v1, Lcom/android/server/MountService$7$1;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$7$1;-><init>(Lcom/android/server/MountService$7;)V

    invoke-virtual {v1}, Lcom/android/server/MountService$7$1;->start()V

    goto :goto_19
.end method
