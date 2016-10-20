.method private switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/internal/telephony/RIL;->mInitialRadioStateChange:Z

    if-eqz v3, :cond_4e

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/RIL;->get3GSimId()I

    move-result v0

    if-lt v0, v1, :cond_36

    :goto_d
    iput-boolean v1, p0, Lcom/android/internal/telephony/RIL;->mIs3GSwitch:Z

    iget-boolean v1, p0, Lcom/android/internal/telephony/RIL;->mIs3GSwitch:Z

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/android/internal/telephony/RIL;->mySimId:I

    if-eq v1, v0, :cond_1f

    :cond_17
    iget-boolean v1, p0, Lcom/android/internal/telephony/RIL;->mIs3GSwitch:Z

    if-nez v1, :cond_43

    iget v1, p0, Lcom/android/internal/telephony/RIL;->mySimId:I

    if-nez v1, :cond_43

    :cond_1f
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "RILJ"

    const-string v3, "Radio ON @ init; reset to OFF"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/RIL;->setRadioMode(ILandroid/os/Message;)V

    :goto_30
    sput-boolean v2, Lcom/android/internal/telephony/RIL;->mInitialRadioStateChange:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->disableVTCapability()V

    :goto_35
    return-void

    :cond_36
    move v1, v2

    goto :goto_d

    :cond_38
    const-string v1, "RILJ"

    const-string v3, "Radio OFF @ init 3G phone"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_30

    :cond_43
    const-string v1, "RILJ"

    const-string v2, "Radio OFF @ init 2G phone"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_35

    :cond_4e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_35
.end method