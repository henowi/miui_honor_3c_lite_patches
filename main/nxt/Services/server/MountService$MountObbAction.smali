.class Lcom/android/server/MountService$MountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountObbAction"
.end annotation


# instance fields
.field private final mCallingUid:I

.field private final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V
    .registers 5
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    .line 3954
    iput-object p1, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    .line 3955
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3956
    iput-object p3, p0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    .line 3957
    iput p4, p0, Lcom/android/server/MountService$MountObbAction;->mCallingUid:I

    .line 3958
    return-void
.end method


# virtual methods
.method public handleError()V
    .registers 2

    .prologue
    .line 4036
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 4037
    return-void
.end method

.method public handleExecute()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3962
    iget-object v10, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v10}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;)V

    .line 3963
    iget-object v10, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->warnOnNotMounted()V
    invoke-static {v10}, Lcom/android/server/MountService;->access$4900(Lcom/android/server/MountService;)V

    .line 3965
    invoke-virtual {p0}, Lcom/android/server/MountService$MountObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v8

    .line 3967
    .local v8, "obbInfo":Landroid/content/res/ObbInfo;
    iget-object v10, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    iget-object v11, v8, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    iget v12, p0, Lcom/android/server/MountService$MountObbAction;->mCallingUid:I

    # invokes: Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    invoke-static {v10, v11, v12}, Lcom/android/server/MountService;->access$5000(Lcom/android/server/MountService;Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_46

    .line 3968
    const-string v10, "MountService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Denied attempt to mount OBB "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " which is owned by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    const/16 v10, 0x19

    invoke-virtual {p0, v10}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 4032
    :goto_45
    return-void

    .line 3975
    :cond_46
    iget-object v10, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v10}, Lcom/android/server/MountService;->access$4500(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v11

    monitor-enter v11

    .line 3976
    :try_start_4d
    iget-object v10, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;
    invoke-static {v10}, Lcom/android/server/MountService;->access$4600(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v12, v12, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    .line 3977
    .local v5, "isMounted":Z
    monitor-exit v11
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_7e

    .line 3978
    if-eqz v5, :cond_81

    .line 3979
    const-string v10, "MountService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Attempt to mount OBB which is already mounted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    const/16 v10, 0x18

    invoke-virtual {p0, v10}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_45

    .line 3977
    .end local v5    # "isMounted":Z
    :catchall_7e
    move-exception v10

    :try_start_7f
    monitor-exit v11
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v10

    .line 3985
    .restart local v5    # "isMounted":Z
    :cond_81
    iget-object v10, p0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    if-nez v10, :cond_cc

    .line 3986
    const-string v4, "none"

    .line 4007
    .local v4, "hashedKey":Ljava/lang/String;
    :goto_87
    const/4 v9, 0x0

    .line 4009
    .local v9, "rc":I
    :try_start_88
    iget-object v10, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v10}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v10

    const-string v11, "obb"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "mount"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v14, v14, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    new-instance v14, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v14, v4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v14, v12, v13

    const/4 v13, 0x3

    iget-object v14, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v14, v14, Lcom/android/server/MountService$ObbState;->ownerGid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_b5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_88 .. :try_end_b5} :catch_115

    .line 4018
    :cond_b5
    :goto_b5
    if-nez v9, :cond_123

    .line 4022
    iget-object v10, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v10}, Lcom/android/server/MountService;->access$4500(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v11

    monitor-enter v11

    .line 4023
    :try_start_be
    iget-object v10, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    iget-object v12, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    # invokes: Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    invoke-static {v10, v12}, Lcom/android/server/MountService;->access$5100(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 4024
    monitor-exit v11
    :try_end_c6
    .catchall {:try_start_be .. :try_end_c6} :catchall_120

    .line 4026
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_45

    .line 3989
    .end local v4    # "hashedKey":Ljava/lang/String;
    .end local v9    # "rc":I
    :cond_cc
    :try_start_cc
    const-string v10, "PBKDF2WithHmacSHA1"

    invoke-static {v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 3991
    .local v3, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v7, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v10, p0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    iget-object v11, v8, Landroid/content/res/ObbInfo;->salt:[B

    const/16 v12, 0x400

    const/16 v13, 0x80

    invoke-direct {v7, v10, v11, v12, v13}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 3993
    .local v7, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v3, v7}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 3994
    .local v6, "key":Ljavax/crypto/SecretKey;
    new-instance v0, Ljava/math/BigInteger;

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/math/BigInteger;-><init>([B)V

    .line 3995
    .local v0, "bi":Ljava/math/BigInteger;
    const/16 v10, 0x10

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_f5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_cc .. :try_end_f5} :catch_f7
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_cc .. :try_end_f5} :catch_106

    move-result-object v4

    .restart local v4    # "hashedKey":Ljava/lang/String;
    goto :goto_87

    .line 3996
    .end local v0    # "bi":Ljava/math/BigInteger;
    .end local v3    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v4    # "hashedKey":Ljava/lang/String;
    .end local v6    # "key":Ljavax/crypto/SecretKey;
    .end local v7    # "ks":Ljava/security/spec/KeySpec;
    :catch_f7
    move-exception v2

    .line 3997
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v10, "MountService"

    const-string v11, "Could not load PBKDF2 algorithm"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3998
    const/16 v10, 0x14

    invoke-virtual {p0, v10}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_45

    .line 4000
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_106
    move-exception v2

    .line 4001
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v10, "MountService"

    const-string v11, "Invalid key spec when loading PBKDF2 algorithm"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4002
    const/16 v10, 0x14

    invoke-virtual {p0, v10}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_45

    .line 4011
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    .restart local v4    # "hashedKey":Ljava/lang/String;
    .restart local v9    # "rc":I
    :catch_115
    move-exception v2

    .line 4012
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 4013
    .local v1, "code":I
    const/16 v10, 0x195

    if-eq v1, v10, :cond_b5

    .line 4014
    const/4 v9, -0x1

    goto :goto_b5

    .line 4024
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_120
    move-exception v10

    :try_start_121
    monitor-exit v11
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    throw v10

    .line 4028
    :cond_123
    const-string v10, "MountService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t mount OBB file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    const/16 v10, 0x15

    invoke-virtual {p0, v10}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_45
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4042
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "MountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4043
    iget-object v1, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4044
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4045
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
