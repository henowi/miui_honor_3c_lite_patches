.method public set3GCapabilitySIM(I)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget v2, Lcom/android/internal/telephony/gsm/GSMPhone;->m3GCapabilitySIM:I

    if-eq v2, p1, :cond_53

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] set3GCapabilitySIM ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->LOGD(Ljava/lang/String;)V

    if-nez p1, :cond_42

    const/4 p1, 0x1

    :cond_31
    :goto_31
    const/4 v2, -0x1

    if-ne p1, v2, :cond_50

    sput v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTargetNetworkMode:I

    :goto_36
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->set3GCapabilitySIM(ILandroid/os/Message;)V

    :goto_41
    return v0

    :cond_42
    if-ne p1, v0, :cond_46

    const/4 p1, 0x2

    goto :goto_31

    :cond_46
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4b

    const/4 p1, 0x3

    goto :goto_31

    :cond_4b
    const/4 v2, 0x3

    if-ne p1, v2, :cond_31

    const/4 p1, 0x4

    goto :goto_31

    :cond_50
    sput v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mTargetNetworkMode:I

    goto :goto_36

    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mySimId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] set3GCapabilitySIM to the same SIM["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->LOGD(Ljava/lang/String;)V

    move v0, v1

    goto :goto_41
.end method