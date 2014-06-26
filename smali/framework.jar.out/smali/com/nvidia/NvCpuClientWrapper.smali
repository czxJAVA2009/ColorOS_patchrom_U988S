.class public Lcom/nvidia/NvCpuClientWrapper;
.super Ljava/lang/Object;
.source "NvCpuClientWrapper.java"

# interfaces
.implements Lcom/nvidia/NvCpuClientConstants;


# static fields
.field private static final TAG:Ljava/lang/String; = "NvCpuClientWrapper"


# instance fields
.field private mNvCpuClient:Lcom/nvidia/NvCpuClient;

.field private mNvCpuMaxFreqHdl:Ljava/io/FileDescriptor;

.field private mNvCpuMaxOnlineHdl:Ljava/io/FileDescriptor;

.field private mNvCpuMinFreqHdl:Ljava/io/FileDescriptor;

.field private mNvCpuMinOnlineHdl:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Lcom/nvidia/NvCpuClient;

    invoke-direct {v0}, Lcom/nvidia/NvCpuClient;-><init>()V

    iput-object v0, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuClient:Lcom/nvidia/NvCpuClient;

    .line 144
    iput-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxFreqHdl:Ljava/io/FileDescriptor;

    .line 145
    iput-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMinFreqHdl:Ljava/io/FileDescriptor;

    .line 146
    iput-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMinOnlineHdl:Ljava/io/FileDescriptor;

    .line 147
    iput-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxOnlineHdl:Ljava/io/FileDescriptor;

    .line 148
    return-void
.end method


# virtual methods
.method public declared-synchronized NvClearCpuMaxFreq()V
    .locals 3

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxFreqHdl:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxFreqHdl:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    .line 247
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxFreqHdl:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, ioe:Ljava/io/IOException;
    :try_start_1
    const-string v1, "NvCpuClientWrapper"

    const-string v2, "Trouble closing mNvCpuMaxFreqHdl"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized NvClearCpuMaxOnline()V
    .locals 3

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxOnlineHdl:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxOnlineHdl:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    .line 279
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxOnlineHdl:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, ioe:Ljava/io/IOException;
    :try_start_1
    const-string v1, "NvCpuClientWrapper"

    const-string v2, "Trouble closing mNvCpuMaxOnlineHdl"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 277
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized NvClearCpuMinOnline()V
    .locals 3

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMinOnlineHdl:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMinOnlineHdl:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    .line 263
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMinOnlineHdl:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, ioe:Ljava/io/IOException;
    :try_start_1
    const-string v1, "NvCpuClientWrapper"

    const-string v2, "Trouble closing mNvCpuMinOnlineHdl"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 261
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized NvSetCpuMaxFreq(I)V
    .locals 3
    .parameter "cpuMaxFreq"

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 202
    .local v0, now:J
    iget-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxFreqHdl:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/nvidia/NvCpuClientWrapper;->NvClearCpuMaxFreq()V

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuClient:Lcom/nvidia/NvCpuClient;

    invoke-virtual {v2, p1, v0, v1}, Lcom/nvidia/NvCpuClient;->requestCpuFreqMaxHandle(IJ)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxFreqHdl:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 201
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public NvSetCpuMaxFreq(IJ)V
    .locals 6
    .parameter "cpuMaxFreq"
    .parameter "timeoutNs"

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 161
    .local v4, now:J
    iget-object v0, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuClient:Lcom/nvidia/NvCpuClient;

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nvidia/NvCpuClient;->requestCpuFreqMax(IJJ)V

    .line 162
    return-void
.end method

.method public declared-synchronized NvSetCpuMaxOnline(I)V
    .locals 3
    .parameter "cpuMaxOnline"

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 232
    .local v0, now:J
    iget-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxOnlineHdl:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/nvidia/NvCpuClientWrapper;->NvClearCpuMaxOnline()V

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuClient:Lcom/nvidia/NvCpuClient;

    invoke-virtual {v2, p1, v0, v1}, Lcom/nvidia/NvCpuClient;->requestMaxOnlineCpuCountHandle(IJ)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMaxOnlineHdl:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 231
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public NvSetCpuMinFreq(IJ)V
    .locals 6
    .parameter "cpuMinFreq"
    .parameter "timeoutNs"

    .prologue
    .line 174
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 175
    .local v4, now:J
    iget-object v0, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuClient:Lcom/nvidia/NvCpuClient;

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nvidia/NvCpuClient;->requestCpuFreqMin(IJJ)V

    .line 176
    return-void
.end method

.method public declared-synchronized NvSetCpuMinOnline(I)V
    .locals 3
    .parameter "cpuMinOnline"

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 217
    .local v0, now:J
    iget-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMinOnlineHdl:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/nvidia/NvCpuClientWrapper;->NvClearCpuMinOnline()V

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuClient:Lcom/nvidia/NvCpuClient;

    invoke-virtual {v2, p1, v0, v1}, Lcom/nvidia/NvCpuClient;->requestMinOnlineCpuCountHandle(IJ)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuMinOnlineHdl:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 216
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public NvSetCpuMinOnline(IJ)V
    .locals 6
    .parameter "cpuMinOnline"
    .parameter "timeoutNs"

    .prologue
    .line 188
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 189
    .local v4, now:J
    iget-object v0, p0, Lcom/nvidia/NvCpuClientWrapper;->mNvCpuClient:Lcom/nvidia/NvCpuClient;

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nvidia/NvCpuClient;->requestMinOnlineCpuCount(IJJ)V

    .line 190
    return-void
.end method
