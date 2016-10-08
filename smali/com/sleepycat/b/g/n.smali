.class public final Lcom/sleepycat/b/g/n;
.super Ljava/io/RandomAccessFile;
.source "FileManager.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3181
    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3182
    return-void
.end method


# virtual methods
.method public final declared-synchronized length()J
    .locals 2

    .prologue
    .line 3193
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/RandomAccessFile;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
