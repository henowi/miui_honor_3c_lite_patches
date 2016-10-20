.method public run()V
    .registers 19

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v12

    :goto_b
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mStoped:Z

    if-eqz v15, :cond_12

    :goto_11
    return-void

    :cond_12
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/internal/telephony/RIL;->get3GSimId()I

    move-result v6

    const/4 v15, 0x1

    if-lt v6, v15, :cond_132

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    if-nez v15, :cond_128

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v12

    :cond_31
    :goto_31
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "3G switched, switch sockets ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x1

    # setter for: Lcom/android/internal/telephony/RIL;->mIs3GSwitch:Z
    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->access$402(Lcom/android/internal/telephony/RIL;Z)Z
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_6a} :catch_13d

    :goto_6a
    :try_start_6a
    new-instance v11, Landroid/net/LocalSocket;

    invoke-direct {v11}, Landroid/net/LocalSocket;-><init>()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6f} :catch_152
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6f} :catch_13d

    :try_start_6f
    new-instance v4, Landroid/net/LocalSocketAddress;

    sget-object v15, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, v12, v15}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v11, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_79} :catch_23f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_79} :catch_13d

    const/4 v8, 0x0

    :try_start_7a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v11, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Connected to \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_a0} :catch_13d

    const/4 v5, 0x0

    :try_start_a1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    :goto_ab
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    # invokes: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v3, v15}, Lcom/android/internal/telephony/RIL;->access$500(Ljava/io/InputStream;[B)I
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_b2} :catch_1d7
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_b2} :catch_1fc

    move-result v5

    if-gez v5, :cond_1b8

    :goto_b5
    :try_start_b5
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Disconnected from \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v16, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_de} :catch_13d

    :try_start_de
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e7} :catch_23c
    .catch Ljava/lang/Throwable; {:try_start_de .. :try_end_e7} :catch_13d

    :goto_e7
    :try_start_e7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    invoke-static {v15}, Lcom/android/internal/telephony/RILRequest;->resetSerial(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v15, Lcom/android/internal/telephony/RIL;->mRequestList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_101
    .catch Ljava/lang/Throwable; {:try_start_e7 .. :try_end_101} :catch_13d

    const/4 v2, 0x0

    :try_start_102
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    :goto_10c
    if-ge v2, v13, :cond_227

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/RILRequest;

    const/4 v15, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v15, v0}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    invoke-virtual {v9}, Lcom/android/internal/telephony/RILRequest;->release()V
    :try_end_125
    .catchall {:try_start_102 .. :try_end_125} :catchall_233

    add-int/lit8 v2, v2, 0x1

    goto :goto_10c

    :cond_128
    :try_start_128
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    if-ne v15, v6, :cond_31

    sget-object v12, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    goto/16 :goto_31

    :cond_132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, 0x0

    # setter for: Lcom/android/internal/telephony/RIL;->mIs3GSwitch:Z
    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->access$402(Lcom/android/internal/telephony/RIL;Z)Z
    :try_end_13b
    .catch Ljava/lang/Throwable; {:try_start_128 .. :try_end_13b} :catch_13d

    goto/16 :goto_6a

    :catch_13d
    move-exception v14

    const-string v15, "RILJ"

    const-string v16, "Uncaught exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/16 v16, -0x1

    # invokes: Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V
    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;I)V

    goto/16 :goto_11

    :catch_152
    move-exception v1

    :goto_153
    if-eqz v10, :cond_158

    :try_start_155
    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_158} :catch_236
    .catch Ljava/lang/Throwable; {:try_start_155 .. :try_end_158} :catch_13d

    :cond_158
    :goto_158
    const/16 v15, 0x10

    if-ne v8, v15, :cond_191

    :try_start_15c
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Couldn\'t find \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket after "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " times, continuing to retry silently"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_188
    .catch Ljava/lang/Throwable; {:try_start_15c .. :try_end_188} :catch_13d

    :cond_188
    :goto_188
    const-wide/16 v15, 0xfa0

    :try_start_18a
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18d
    .catch Ljava/lang/InterruptedException; {:try_start_18a .. :try_end_18d} :catch_239
    .catch Ljava/lang/Throwable; {:try_start_18a .. :try_end_18d} :catch_13d

    :goto_18d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b

    :cond_191
    if-lez v8, :cond_188

    const/16 v15, 0x10

    if-ge v8, v15, :cond_188

    :try_start_197
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Couldn\'t find \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket; retrying after timeout"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b7
    .catch Ljava/lang/Throwable; {:try_start_197 .. :try_end_1b7} :catch_13d

    goto :goto_188

    :cond_1b8
    :try_start_1b8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v15, v7}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_1d5
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1d5} :catch_1d7
    .catch Ljava/lang/Throwable; {:try_start_1b8 .. :try_end_1d5} :catch_1fc

    goto/16 :goto_ab

    :catch_1d7
    move-exception v1

    :try_start_1d8
    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' socket closed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b5

    :catch_1fc
    move-exception v14

    const-string v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Uncaught exception read length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Exception:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_225
    .catch Ljava/lang/Throwable; {:try_start_1d8 .. :try_end_225} :catch_13d

    goto/16 :goto_b5

    :cond_227
    :try_start_227
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v15, Lcom/android/internal/telephony/RIL;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    monitor-exit v16

    goto/16 :goto_b

    :catchall_233
    move-exception v15

    monitor-exit v16
    :try_end_235
    .catchall {:try_start_227 .. :try_end_235} :catchall_233

    :try_start_235
    throw v15
    :try_end_236
    .catch Ljava/lang/Throwable; {:try_start_235 .. :try_end_236} :catch_13d

    :catch_236
    move-exception v15

    goto/16 :goto_158

    :catch_239
    move-exception v15

    goto/16 :goto_18d

    :catch_23c
    move-exception v15

    goto/16 :goto_e7

    :catch_23f
    move-exception v1

    move-object v10, v11

    goto/16 :goto_153
.end method