.class Lcom/android/server/MountService$13;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->shareCDRom(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$doShare:Z


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Z)V
    .registers 3

    .prologue
    .line 4566
    iput-object p1, p0, Lcom/android/server/MountService$13;->this$0:Lcom/android/server/MountService;

    iput-boolean p2, p0, Lcom/android/server/MountService$13;->val$doShare:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 4568
    const-string v1, "yes"

    const-string v2, "sys.usb.mtk_bicr_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "yes_hide"

    const-string v2, "sys.usb.mtk_bicr_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 4570
    :cond_1d
    iget-object v1, p0, Lcom/android/server/MountService$13;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v1}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;)V

    .line 4571
    iget-object v1, p0, Lcom/android/server/MountService$13;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->doGetCDRomState()I
    invoke-static {v1}, Lcom/android/server/MountService;->access$5200(Lcom/android/server/MountService;)I

    move-result v0

    .line 4572
    .local v0, "state":I
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CDRom status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    if-nez v0, :cond_46

    iget-boolean v1, p0, Lcom/android/server/MountService$13;->val$doShare:Z

    if-eqz v1, :cond_4c

    :cond_46
    if-ne v0, v4, :cond_53

    iget-boolean v1, p0, Lcom/android/server/MountService$13;->val$doShare:Z

    if-ne v1, v4, :cond_53

    .line 4575
    :cond_4c
    iget-object v1, p0, Lcom/android/server/MountService$13;->this$0:Lcom/android/server/MountService;

    iget-boolean v2, p0, Lcom/android/server/MountService$13;->val$doShare:Z

    # invokes: Lcom/android/server/MountService;->doShareUnshareCDRom(Z)V
    invoke-static {v1, v2}, Lcom/android/server/MountService;->access$5300(Lcom/android/server/MountService;Z)V

    .line 4580
    .end local v0    # "state":I
    :cond_53
    :goto_53
    return-void

    .line 4578
    :cond_54
    const-string v1, "MountService"

    const-string v2, "CD rom feature not enable!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53
.end method
