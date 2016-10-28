.class Lcom/android/server/MountService$3;
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
    .line 946
    iput-object p1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 949
    const-string v1, "connected"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "mass_storage"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "SettingUsbCharging"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v0, 0x1

    .line 952
    .local v0, "available":Z
    :cond_1a
    iget-object v1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # setter for: Lcom/android/server/MountService;->mIsUsbConnected:Z
    invoke-static {v1, v0}, Lcom/android/server/MountService;->access$602(Lcom/android/server/MountService;Z)Z

    .line 953
    iget-object v1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
    invoke-static {v1, v0}, Lcom/android/server/MountService;->access$2800(Lcom/android/server/MountService;Z)V

    .line 954
    return-void
.end method
