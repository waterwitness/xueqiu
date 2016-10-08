.class public Lcom/xueqiu/android/base/storage/prefs/DataStore;
.super Ljava/lang/Object;
.source "DataStore.java"


# static fields
.field private static final DB_HOME:Ljava/lang/String; = "db_home_v3"

.field private static final ENCRYPT_TIMES:I = 0x10

.field private static final TAG:Ljava/lang/String; = "DataStore"

.field private static instance:Lcom/xueqiu/android/base/storage/prefs/DataStore;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

.field private mMessageBinding:Lcom/xueqiu/android/message/database/bind/MessageBinding;

.field private mOwnerId:J

.field private mSecret:[B

.field private mTalkBinding:Lcom/xueqiu/android/message/database/bind/TalkBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->instance:Lcom/xueqiu/android/base/storage/prefs/DataStore;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;J)V
    .locals 4

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mContext:Landroid/content/Context;

    .line 68
    iput-wide p2, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mOwnerId:J

    .line 69
    new-instance v0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-direct {v0}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    const-string v1, "db_home_v3"

    invoke-static {p2, p3, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getDatabasePath(JLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->setup(Ljava/io/File;Z)V

    .line 71
    new-instance v0, Lcom/xueqiu/android/message/database/bind/TalkBinding;

    invoke-direct {v0}, Lcom/xueqiu/android/message/database/bind/TalkBinding;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mTalkBinding:Lcom/xueqiu/android/message/database/bind/TalkBinding;

    .line 72
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/DBManager;->getMessageDBSecret()[B

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mSecret:[B

    .line 73
    new-instance v0, Lcom/xueqiu/android/message/database/bind/MessageBinding;

    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mSecret:[B

    invoke-direct {v0, v1}, Lcom/xueqiu/android/message/database/bind/MessageBinding;-><init>([B)V

    iput-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mMessageBinding:Lcom/xueqiu/android/message/database/bind/MessageBinding;

    .line 74
    return-void
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->instance:Lcom/xueqiu/android/base/storage/prefs/DataStore;

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->instance:Lcom/xueqiu/android/base/storage/prefs/DataStore;

    invoke-direct {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->closeEnv()V

    .line 136
    :cond_0
    return-void
.end method

.method private closeEnv()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->close()V

    .line 129
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->instance:Lcom/xueqiu/android/base/storage/prefs/DataStore;

    .line 130
    return-void
.end method

.method private static destroyDBWhileOccurredException()V
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 78
    const-string v2, "db_home_v3"

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getDatabasePath(JLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 80
    :try_start_0
    invoke-static {v0}, Lcom/xueqiu/android/base/util/k;->b(Ljava/io/File;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v1, "DataStore"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getDatabasePath(JLjava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "%s/%d/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getHeaderKey(Lcom/sleepycat/b/bp;JZLcom/sleepycat/b/ao;)Lcom/xueqiu/android/message/database/key/MessageKey;
    .locals 6

    .prologue
    .line 587
    new-instance v0, Lcom/xueqiu/android/message/database/key/TalkKey;

    invoke-direct {v0, p2, p3, p4}, Lcom/xueqiu/android/message/database/key/TalkKey;-><init>(JZ)V

    .line 588
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-direct {v1}, Lcom/sleepycat/b/m;-><init>()V

    .line 590
    :try_start_0
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getTalkMessageDb()Lcom/sleepycat/b/i;

    move-result-object v2

    new-instance v3, Lcom/sleepycat/b/m;

    .line 591
    invoke-virtual {v0}, Lcom/xueqiu/android/message/database/key/TalkKey;->getBytes()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 590
    invoke-virtual {v2, p1, v3, v1, p5}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v2, :cond_0

    .line 593
    new-instance v0, Lcom/xueqiu/android/message/database/key/MessageKey;

    .line 5197
    iget-object v1, v1, Lcom/sleepycat/b/m;->a:[B

    .line 593
    invoke-direct {v0, v1}, Lcom/xueqiu/android/message/database/key/MessageKey;-><init>([B)V
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :goto_0
    return-object v0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    const-string v1, "DataStore"

    const-string v2, "getHeaderKey [%d:%s] failed."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 598
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;
    .locals 5

    .prologue
    .line 94
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 95
    sget-object v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->instance:Lcom/xueqiu/android/base/storage/prefs/DataStore;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->instance:Lcom/xueqiu/android/base/storage/prefs/DataStore;

    iget-wide v0, v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mOwnerId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 97
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->instance:Lcom/xueqiu/android/base/storage/prefs/DataStore;

    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->instance:Lcom/xueqiu/android/base/storage/prefs/DataStore;

    invoke-direct {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->closeEnv()V

    .line 101
    :cond_1
    :try_start_0
    new-instance v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;

    invoke-direct {v0, p0, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/DataStore;-><init>(Landroid/content/Context;J)V

    sput-object v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->instance:Lcom/xueqiu/android/base/storage/prefs/DataStore;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_2
    :goto_0
    sget-object v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->instance:Lcom/xueqiu/android/base/storage/prefs/DataStore;

    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string v1, "DataStore"

    const-string v4, "open db_env failed."

    invoke-static {v1, v4, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    invoke-static {p0, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->recreateDBWhileOccurredException(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method private getMessage(Lcom/sleepycat/b/bp;Lcom/xueqiu/android/message/database/key/MessageKey;Lcom/sleepycat/b/ao;)Lcom/xueqiu/android/message/model/Message;
    .locals 4

    .prologue
    .line 255
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getMessageDb()Lcom/sleepycat/b/i;

    move-result-object v1

    new-instance v2, Lcom/sleepycat/b/m;

    invoke-virtual {p2}, Lcom/xueqiu/android/message/database/key/MessageKey;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sleepycat/b/m;-><init>([B)V

    invoke-virtual {v1, p1, v2, v0, p3}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v1, v2, :cond_0

    .line 259
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mMessageBinding:Lcom/xueqiu/android/message/database/bind/MessageBinding;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/database/bind/MessageBinding;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-object v0

    .line 262
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sleepycat/b/n;->printStackTrace()V

    .line 264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMessages(Lcom/xueqiu/android/message/database/key/MessageKey;IZ)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/message/database/key/MessageKey;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    if-nez p1, :cond_0

    move-object v0, v1

    .line 327
    :goto_0
    return-object v0

    .line 295
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getMessageDb()Lcom/sleepycat/b/i;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;

    move-result-object v2

    .line 296
    new-instance v3, Lcom/sleepycat/b/m;

    invoke-virtual {p1}, Lcom/xueqiu/android/message/database/key/MessageKey;->getBytes()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 297
    new-instance v6, Lcom/sleepycat/b/m;

    invoke-direct {v6}, Lcom/sleepycat/b/m;-><init>()V

    .line 298
    sget-object v0, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v2, v3, v6, v0}, Lcom/sleepycat/b/e;->e(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    sget-object v7, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v7, :cond_2

    .line 300
    if-nez p3, :cond_1

    .line 301
    add-int/lit8 p2, p2, -0x1

    .line 302
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mMessageBinding:Lcom/xueqiu/android/message/database/bind/MessageBinding;

    invoke-virtual {v0, v6}, Lcom/xueqiu/android/message/database/bind/MessageBinding;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_1
    :goto_1
    sget-object v0, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v2, v3, v6, v0}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    sget-object v7, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v7, :cond_2

    if-lez p2, :cond_2

    .line 306
    new-instance v0, Lcom/xueqiu/android/message/database/key/MessageKey;

    .line 1197
    iget-object v7, v3, Lcom/sleepycat/b/m;->a:[B

    .line 306
    invoke-direct {v0, v7}, Lcom/xueqiu/android/message/database/key/MessageKey;-><init>([B)V

    .line 307
    iget-wide v8, v0, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    iget-wide v10, p1, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    iget-boolean v0, v0, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    iget-boolean v7, p1, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    if-ne v0, v7, :cond_2

    .line 308
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mMessageBinding:Lcom/xueqiu/android/message/database/bind/MessageBinding;

    invoke-virtual {v0, v6}, Lcom/xueqiu/android/message/database/bind/MessageBinding;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    add-int/lit8 p2, p2, -0x1

    .line 313
    goto :goto_1

    .line 318
    :cond_2
    if-eqz v2, :cond_3

    .line 320
    :try_start_1
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V
    :try_end_1
    .catch Lcom/sleepycat/b/n; {:try_start_1 .. :try_end_1} :catch_0

    .line 326
    :cond_3
    :goto_2
    const-string v0, "DataStore"

    const-string v2, "get %d messages in %dms"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 327
    goto/16 :goto_0

    .line 322
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sleepycat/b/n;->printStackTrace()V

    goto :goto_2

    .line 316
    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lcom/sleepycat/b/n;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    if-eqz v2, :cond_3

    .line 320
    :try_start_3
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V
    :try_end_3
    .catch Lcom/sleepycat/b/n; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 322
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/sleepycat/b/n;->printStackTrace()V

    goto :goto_2

    .line 318
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    .line 320
    :try_start_4
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V
    :try_end_4
    .catch Lcom/sleepycat/b/n; {:try_start_4 .. :try_end_4} :catch_3

    .line 323
    :cond_4
    :goto_3
    throw v0

    .line 322
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Lcom/sleepycat/b/n;->printStackTrace()V

    goto :goto_3
.end method

.method public static recreateDBWhileOccurredException(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->destroyDBWhileOccurredException()V

    .line 114
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->close()V

    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->instance:Lcom/xueqiu/android/base/storage/prefs/DataStore;

    .line 117
    :try_start_0
    new-instance v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;

    invoke-direct {v0, p0, p1, p2}, Lcom/xueqiu/android/base/storage/prefs/DataStore;-><init>(Landroid/content/Context;J)V

    sput-object v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->instance:Lcom/xueqiu/android/base/storage/prefs/DataStore;

    .line 118
    const-string v0, "DataStore"

    const-string v1, "recreate db success"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    const-string v0, "DataStore"

    const-string v1, "recreate db failed"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->clearData()V

    .line 670
    return-void
.end method

.method public deleteMessage(JJJZ)V
    .locals 17

    .prologue
    .line 331
    const/4 v5, 0x0

    .line 332
    const/4 v13, 0x0

    .line 334
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v4}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getDbEnv()Lcom/sleepycat/b/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/b/x;->b()Lcom/sleepycat/b/bp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v14

    .line 335
    :try_start_1
    new-instance v4, Lcom/xueqiu/android/message/database/key/TalkKey;

    move-wide/from16 v0, p5

    move/from16 v2, p7

    invoke-direct {v4, v0, v1, v2}, Lcom/xueqiu/android/message/database/key/TalkKey;-><init>(JZ)V

    .line 336
    new-instance v5, Lcom/xueqiu/android/message/database/key/MessageKey;

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    invoke-direct/range {v5 .. v12}, Lcom/xueqiu/android/message/database/key/MessageKey;-><init>(JJJZ)V

    .line 337
    new-instance v12, Lcom/sleepycat/b/m;

    invoke-direct {v12}, Lcom/sleepycat/b/m;-><init>()V

    .line 338
    new-instance v15, Lcom/sleepycat/b/m;

    invoke-direct {v15}, Lcom/sleepycat/b/m;-><init>()V

    .line 339
    invoke-virtual {v4}, Lcom/xueqiu/android/message/database/key/TalkKey;->getBytes()[B

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/sleepycat/b/m;->a([B)V

    .line 340
    sget-object v11, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    move-object/from16 v6, p0

    move-object v7, v14

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-direct/range {v6 .. v11}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getHeaderKey(Lcom/sleepycat/b/bp;JZLcom/sleepycat/b/ao;)Lcom/xueqiu/android/message/database/key/MessageKey;

    move-result-object v6

    .line 341
    if-eqz v6, :cond_5

    invoke-virtual {v6, v5}, Lcom/xueqiu/android/message/database/key/MessageKey;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 342
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v6}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getMessageDb()Lcom/sleepycat/b/i;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v14, v7}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 343
    :try_start_2
    new-instance v7, Lcom/sleepycat/b/m;

    invoke-virtual {v5}, Lcom/xueqiu/android/message/database/key/MessageKey;->getBytes()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sleepycat/b/m;-><init>([B)V

    sget-object v8, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    invoke-virtual {v6, v7, v15, v8}, Lcom/sleepycat/b/e;->e(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v7

    sget-object v8, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v7, v8, :cond_0

    .line 345
    sget-object v7, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v6, v12, v15, v7}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v7

    sget-object v8, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v7, v8, :cond_0

    .line 346
    new-instance v7, Lcom/xueqiu/android/message/database/key/MessageKey;

    .line 2197
    iget-object v8, v12, Lcom/sleepycat/b/m;->a:[B

    .line 346
    invoke-direct {v7, v8}, Lcom/xueqiu/android/message/database/key/MessageKey;-><init>([B)V

    .line 347
    iget-wide v8, v7, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    cmp-long v8, v8, p5

    if-nez v8, :cond_2

    iget-boolean v7, v7, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    move/from16 v0, p7

    if-ne v7, v0, :cond_2

    .line 348
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v7}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getTalkMessageDb()Lcom/sleepycat/b/i;

    move-result-object v7

    new-instance v8, Lcom/sleepycat/b/m;

    invoke-virtual {v4}, Lcom/xueqiu/android/message/database/key/TalkKey;->getBytes()[B

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/sleepycat/b/m;-><init>([B)V

    invoke-virtual {v7, v14, v8, v12}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    .line 354
    :cond_0
    :goto_0
    invoke-virtual {v6}, Lcom/sleepycat/b/e;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 355
    const/4 v13, 0x0

    move-object v6, v13

    .line 357
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v4}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getMessageDb()Lcom/sleepycat/b/i;

    move-result-object v4

    new-instance v7, Lcom/sleepycat/b/m;

    invoke-virtual {v5}, Lcom/xueqiu/android/message/database/key/MessageKey;->getBytes()[B

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/sleepycat/b/m;-><init>([B)V

    invoke-virtual {v4, v14, v7}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    .line 358
    invoke-virtual {v14}, Lcom/sleepycat/b/bp;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 377
    :cond_1
    :goto_2
    return-void

    .line 350
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v7}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getTalkMessageDb()Lcom/sleepycat/b/i;

    move-result-object v7

    new-instance v8, Lcom/sleepycat/b/m;

    invoke-virtual {v4}, Lcom/xueqiu/android/message/database/key/TalkKey;->getBytes()[B

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/sleepycat/b/m;-><init>([B)V

    invoke-virtual {v7, v14, v8}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 359
    :catch_0
    move-exception v4

    move-object v5, v6

    move-object v6, v14

    .line 360
    :goto_3
    :try_start_5
    const-string v7, "DataStore"

    const-string v8, "deleteMessage [%d:%d:%d:%s] failed."

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 361
    if-eqz v6, :cond_3

    .line 363
    :try_start_6
    invoke-virtual {v6}, Lcom/sleepycat/b/bp;->a()V
    :try_end_6
    .catch Lcom/sleepycat/b/n; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 369
    :cond_3
    :goto_4
    if-eqz v5, :cond_1

    .line 371
    :try_start_7
    invoke-virtual {v5}, Lcom/sleepycat/b/e;->close()V
    :try_end_7
    .catch Lcom/sleepycat/b/n; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 373
    :catch_1
    move-exception v4

    invoke-virtual {v4}, Lcom/sleepycat/b/n;->printStackTrace()V

    goto :goto_2

    .line 365
    :catch_2
    move-exception v4

    :try_start_8
    invoke-virtual {v4}, Lcom/sleepycat/b/n;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 369
    :catchall_0
    move-exception v4

    move-object v6, v5

    :goto_5
    if-eqz v6, :cond_4

    .line 371
    :try_start_9
    invoke-virtual {v6}, Lcom/sleepycat/b/e;->close()V
    :try_end_9
    .catch Lcom/sleepycat/b/n; {:try_start_9 .. :try_end_9} :catch_3

    .line 374
    :cond_4
    :goto_6
    throw v4

    .line 373
    :catch_3
    move-exception v5

    invoke-virtual {v5}, Lcom/sleepycat/b/n;->printStackTrace()V

    goto :goto_6

    .line 369
    :catchall_1
    move-exception v4

    move-object v6, v13

    goto :goto_5

    :catchall_2
    move-exception v4

    goto :goto_5

    .line 359
    :catch_4
    move-exception v4

    move-object v6, v5

    move-object v5, v13

    goto :goto_3

    :catch_5
    move-exception v4

    move-object v5, v13

    move-object v6, v14

    goto :goto_3

    :catch_6
    move-exception v4

    move-object v5, v6

    move-object v6, v14

    goto :goto_3

    :cond_5
    move-object v6, v13

    goto/16 :goto_1
.end method

.method public deleteMessages(JZ)V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 380
    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getDbEnv()Lcom/sleepycat/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/x;->b()Lcom/sleepycat/b/bp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 384
    :try_start_1
    new-instance v0, Lcom/xueqiu/android/message/database/key/TalkKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/xueqiu/android/message/database/key/TalkKey;-><init>(JZ)V

    .line 385
    new-instance v7, Lcom/sleepycat/b/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/database/key/TalkKey;->getBytes()[B

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 386
    sget-object v5, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getHeaderKey(Lcom/sleepycat/b/bp;JZLcom/sleepycat/b/ao;)Lcom/xueqiu/android/message/database/key/MessageKey;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_3

    .line 388
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getMessageDb()Lcom/sleepycat/b/i;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 389
    :try_start_2
    new-instance v3, Lcom/sleepycat/b/m;

    invoke-direct {v3}, Lcom/sleepycat/b/m;-><init>()V

    .line 390
    new-instance v4, Lcom/sleepycat/b/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/database/key/MessageKey;->getBytes()[B

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/sleepycat/b/m;-><init>([B)V

    sget-object v0, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    invoke-virtual {v2, v4, v3, v0}, Lcom/sleepycat/b/e;->e(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v4, :cond_2

    .line 392
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->b()Lcom/sleepycat/b/av;

    .line 393
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 394
    :goto_0
    sget-object v4, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    invoke-virtual {v2, v0, v3, v4}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v4, v5, :cond_2

    .line 396
    new-instance v4, Lcom/xueqiu/android/message/database/key/MessageKey;

    .line 3197
    iget-object v5, v0, Lcom/sleepycat/b/m;->a:[B

    .line 396
    invoke-direct {v4, v5}, Lcom/xueqiu/android/message/database/key/MessageKey;-><init>([B)V

    .line 397
    iget-wide v8, v4, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    cmp-long v5, v8, p1

    if-nez v5, :cond_2

    iget-boolean v4, v4, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    if-ne v4, p3, :cond_2

    .line 398
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->b()Lcom/sleepycat/b/av;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    move-object v6, v1

    move-object v1, v2

    .line 410
    :goto_1
    :try_start_3
    const-string v2, "DataStore"

    const-string v3, "deleteMessages [%d:%s] failed."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 411
    if-eqz v6, :cond_0

    .line 413
    :try_start_4
    invoke-virtual {v6}, Lcom/sleepycat/b/bp;->a()V
    :try_end_4
    .catch Lcom/sleepycat/b/n; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 419
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 421
    :try_start_5
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V
    :try_end_5
    .catch Lcom/sleepycat/b/n; {:try_start_5 .. :try_end_5} :catch_3

    .line 427
    :cond_1
    :goto_3
    return-void

    .line 404
    :cond_2
    :try_start_6
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 406
    :try_start_7
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getTalkMessageDb()Lcom/sleepycat/b/i;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    .line 408
    :cond_3
    invoke-virtual {v1}, Lcom/sleepycat/b/bp;->b()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 409
    :catch_1
    move-exception v0

    move-object v10, v6

    move-object v6, v1

    move-object v1, v10

    goto :goto_1

    .line 415
    :catch_2
    move-exception v2

    :try_start_8
    const-string v2, "DataStore"

    const-string v3, "abort deleteMessages [%d:%s] failed."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 419
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_4

    .line 421
    :try_start_9
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V
    :try_end_9
    .catch Lcom/sleepycat/b/n; {:try_start_9 .. :try_end_9} :catch_4

    .line 424
    :cond_4
    :goto_5
    throw v0

    .line 423
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lcom/sleepycat/b/n;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Lcom/sleepycat/b/n;->printStackTrace()V

    goto :goto_5

    .line 419
    :catchall_1
    move-exception v0

    move-object v2, v6

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 409
    :catch_5
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public deleteTalk(JZ)V
    .locals 7

    .prologue
    .line 537
    new-instance v0, Lcom/xueqiu/android/message/database/key/TalkKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/xueqiu/android/message/database/key/TalkKey;-><init>(JZ)V

    .line 538
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/database/key/TalkKey;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getTalkDb()Lcom/sleepycat/b/i;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    const-string v1, "DataStore"

    const-string v2, "delete talk [%d:%s] failed."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getHeaderMessage(Lcom/xueqiu/android/message/model/Talk;)Lcom/xueqiu/android/message/model/Message;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v4

    sget-object v5, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getHeaderKey(Lcom/sleepycat/b/bp;JZLcom/sleepycat/b/ao;)Lcom/xueqiu/android/message/database/key/MessageKey;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    iget-wide v2, v0, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    iget-wide v4, v0, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    iget-wide v6, v0, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    iget-boolean v8, v0, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getMessage(JJJZ)Lcom/xueqiu/android/message/model/Message;

    move-result-object v1

    .line 237
    :cond_0
    return-object v1
.end method

.method public getMessage(JJJZ)Lcom/xueqiu/android/message/model/Message;
    .locals 9

    .prologue
    .line 241
    new-instance v1, Lcom/xueqiu/android/message/database/key/MessageKey;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/xueqiu/android/message/database/key/MessageKey;-><init>(JJJZ)V

    .line 242
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 244
    :try_start_0
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getMessageDb()Lcom/sleepycat/b/i;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/sleepycat/b/m;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/database/key/MessageKey;->getBytes()[B

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/sleepycat/b/m;-><init>([B)V

    sget-object v1, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v1, v2, :cond_0

    .line 246
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mMessageBinding:Lcom/xueqiu/android/message/database/bind/MessageBinding;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/database/bind/MessageBinding;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-object v0

    .line 249
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sleepycat/b/n;->printStackTrace()V

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessages(JZI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZI)",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    const/4 v1, 0x0

    sget-object v5, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getHeaderKey(Lcom/sleepycat/b/bp;JZLcom/sleepycat/b/ao;)Lcom/xueqiu/android/message/database/key/MessageKey;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    .line 282
    const/4 v1, 0x0

    invoke-direct {p0, v0, p4, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getMessages(Lcom/xueqiu/android/message/database/key/MessageKey;IZ)Ljava/util/List;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getMessages(Lcom/xueqiu/android/message/model/Message;IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/message/model/Message;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Lcom/xueqiu/android/message/database/key/MessageKey;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/message/database/key/MessageKey;-><init>(Lcom/xueqiu/android/message/model/Message;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getMessages(Lcom/xueqiu/android/message/database/key/MessageKey;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPref(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 655
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-direct {v1}, Lcom/sleepycat/b/m;-><init>()V

    .line 657
    :try_start_0
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getUserPrefsDb()Lcom/sleepycat/b/i;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/sleepycat/b/m;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sleepycat/b/m;-><init>([B)V

    sget-object v5, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v2, v3, :cond_0

    .line 6197
    iget-object v1, v1, Lcom/sleepycat/b/m;->a:[B

    .line 659
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mSecret:[B

    invoke-static {v1, v2}, Lcom/snowballfinance/message/a/c;->a([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 665
    :cond_0
    :goto_0
    return-object v0

    .line 661
    :catch_0
    move-exception v1

    .line 662
    const-string v2, "DataStore"

    const-string v3, "getPref [%s] failed."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 663
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mOwnerId:J

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->recreateDBWhileOccurredException(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public getTalk(JZ)Lcom/xueqiu/android/message/model/Talk;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 435
    new-instance v0, Lcom/xueqiu/android/message/database/key/TalkKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/xueqiu/android/message/database/key/TalkKey;-><init>(JZ)V

    .line 436
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/database/key/TalkKey;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 437
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 439
    :try_start_0
    iget-object v3, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v3}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getTalkDb()Lcom/sleepycat/b/i;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v3, v4, v2, v0, v5}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v2, v3, :cond_0

    .line 441
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mTalkBinding:Lcom/xueqiu/android/message/database/bind/TalkBinding;

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/message/database/bind/TalkBinding;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-object v0

    .line 444
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sleepycat/b/n;->printStackTrace()V

    :cond_0
    move-object v0, v1

    .line 446
    goto :goto_0
.end method

.method public getTalk(Lcom/xueqiu/android/message/model/Message;)Lcom/xueqiu/android/message/model/Talk;
    .locals 4

    .prologue
    .line 430
    new-instance v0, Lcom/xueqiu/android/message/database/key/MessageKey;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/message/database/key/MessageKey;-><init>(Lcom/xueqiu/android/message/model/Message;)V

    .line 431
    iget-wide v2, v0, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    iget-boolean v0, v0, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    invoke-virtual {p0, v2, v3, v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    return-object v0
.end method

.method public getTalkTimeline(JZ)J
    .locals 7

    .prologue
    .line 554
    new-instance v0, Lcom/xueqiu/android/message/database/key/TalkKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/xueqiu/android/message/database/key/TalkKey;-><init>(JZ)V

    .line 555
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/database/key/TalkKey;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 556
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 558
    :try_start_0
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getTalkTimelineDb()Lcom/sleepycat/b/i;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v1, v2, :cond_0

    .line 4197
    iget-object v0, v0, Lcom/sleepycat/b/m;->a:[B

    .line 560
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 566
    :goto_0
    return-wide v0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    const-string v1, "DataStore"

    const-string v2, "getTalkTS [%d:%s] failed."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 566
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getTalks()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Talk;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 461
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getTalkDb()Lcom/sleepycat/b/i;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;

    move-result-object v1

    .line 465
    new-instance v5, Lcom/sleepycat/b/m;

    invoke-direct {v5}, Lcom/sleepycat/b/m;-><init>()V

    .line 466
    new-instance v6, Lcom/sleepycat/b/m;

    invoke-direct {v6}, Lcom/sleepycat/b/m;-><init>()V

    .line 467
    :cond_0
    :goto_0
    sget-object v0, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v1, v5, v6, v0}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    sget-object v7, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v7, :cond_2

    .line 469
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mTalkBinding:Lcom/xueqiu/android/message/database/bind/TalkBinding;

    invoke-virtual {v0, v6}, Lcom/xueqiu/android/message/database/bind/TalkBinding;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 470
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mTalkBinding:Lcom/xueqiu/android/message/database/bind/TalkBinding;

    invoke-virtual {v0, v6}, Lcom/xueqiu/android/message/database/bind/TalkBinding;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/b/n;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    if-eqz v1, :cond_1

    .line 479
    :try_start_2
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V
    :try_end_2
    .catch Lcom/sleepycat/b/n; {:try_start_2 .. :try_end_2} :catch_2

    .line 485
    :cond_1
    :goto_1
    const-string v0, "DataStore"

    const-string v1, "get %d talks in %dms"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-object v4

    .line 477
    :cond_2
    if-eqz v1, :cond_1

    .line 479
    :try_start_3
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V
    :try_end_3
    .catch Lcom/sleepycat/b/n; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 481
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/sleepycat/b/n;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/sleepycat/b/n;->printStackTrace()V

    goto :goto_1

    .line 477
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 479
    :try_start_4
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V
    :try_end_4
    .catch Lcom/sleepycat/b/n; {:try_start_4 .. :try_end_4} :catch_3

    .line 482
    :cond_3
    :goto_2
    throw v0

    .line 481
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Lcom/sleepycat/b/n;->printStackTrace()V

    goto :goto_2
.end method

.method public getTalks(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Talk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 451
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 452
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v3

    if-ne v3, p1, :cond_0

    .line 453
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 456
    :cond_1
    return-object v1
.end method

.method public saveMessage(Lcom/xueqiu/android/message/model/Message;)V
    .locals 9

    .prologue
    .line 139
    new-instance v6, Lcom/xueqiu/android/message/database/key/MessageKey;

    invoke-direct {v6, p1}, Lcom/xueqiu/android/message/database/key/MessageKey;-><init>(Lcom/xueqiu/android/message/model/Message;)V

    .line 140
    new-instance v7, Lcom/xueqiu/android/message/database/key/TalkKey;

    iget-wide v0, v6, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    iget-boolean v2, v6, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    invoke-direct {v7, v0, v1, v2}, Lcom/xueqiu/android/message/database/key/TalkKey;-><init>(JZ)V

    .line 141
    const/4 v1, 0x0

    .line 143
    :try_start_0
    new-instance v8, Lcom/xueqiu/android/message/database/comparator/MessageComparator;

    invoke-direct {v8}, Lcom/xueqiu/android/message/database/comparator/MessageComparator;-><init>()V

    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getDbEnv()Lcom/sleepycat/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/x;->b()Lcom/sleepycat/b/bp;

    move-result-object v1

    .line 145
    iget-wide v2, v6, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    iget-boolean v4, v6, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    sget-object v5, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getHeaderKey(Lcom/sleepycat/b/bp;JZLcom/sleepycat/b/ao;)Lcom/xueqiu/android/message/database/key/MessageKey;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/xueqiu/android/message/database/key/MessageKey;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/xueqiu/android/message/database/key/MessageKey;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Lcom/xueqiu/android/message/database/comparator/MessageComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getTalkMessageDb()Lcom/sleepycat/b/i;

    move-result-object v0

    new-instance v2, Lcom/sleepycat/b/m;

    invoke-virtual {v7}, Lcom/xueqiu/android/message/database/key/TalkKey;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sleepycat/b/m;-><init>([B)V

    new-instance v3, Lcom/sleepycat/b/m;

    .line 148
    invoke-virtual {v6}, Lcom/xueqiu/android/message/database/key/MessageKey;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 147
    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    .line 150
    :cond_1
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 151
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mMessageBinding:Lcom/xueqiu/android/message/database/bind/MessageBinding;

    invoke-virtual {v2, p1, v0}, Lcom/xueqiu/android/message/database/bind/MessageBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/b/m;)V

    .line 152
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getMessageDb()Lcom/sleepycat/b/i;

    move-result-object v2

    new-instance v3, Lcom/sleepycat/b/m;

    invoke-virtual {v6}, Lcom/xueqiu/android/message/database/key/MessageKey;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sleepycat/b/m;-><init>([B)V

    invoke-virtual {v2, v1, v3, v0}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    .line 153
    invoke-virtual {v1}, Lcom/sleepycat/b/bp;->b()V
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_2
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sleepycat/b/n;->printStackTrace()V

    .line 156
    if-eqz v1, :cond_2

    .line 158
    :try_start_1
    invoke-virtual {v1}, Lcom/sleepycat/b/bp;->a()V
    :try_end_1
    .catch Lcom/sleepycat/b/n; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 160
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/sleepycat/b/n;->printStackTrace()V

    goto :goto_0
.end method

.method public saveMessages(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 168
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 169
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v9

    .line 229
    :goto_0
    return-object v2

    .line 172
    :cond_1
    const/4 v3, 0x0

    .line 173
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 175
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getDbEnv()Lcom/sleepycat/b/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/b/x;->b()Lcom/sleepycat/b/bp;

    move-result-object v3

    .line 176
    new-instance v13, Lcom/xueqiu/android/message/database/comparator/MessageComparator;

    invoke-direct {v13}, Lcom/xueqiu/android/message/database/comparator/MessageComparator;-><init>()V

    .line 177
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    move-object v8, v0

    .line 178
    new-instance v15, Lcom/xueqiu/android/message/database/key/MessageKey;

    invoke-direct {v15, v8}, Lcom/xueqiu/android/message/database/key/MessageKey;-><init>(Lcom/xueqiu/android/message/model/Message;)V

    .line 179
    new-instance v16, Lcom/xueqiu/android/message/database/key/TalkKey;

    iget-wide v4, v15, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    iget-boolean v2, v15, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5, v2}, Lcom/xueqiu/android/message/database/key/TalkKey;-><init>(JZ)V

    .line 180
    invoke-virtual {v8}, Lcom/xueqiu/android/message/model/Message;->isByMyself()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v8}, Lcom/xueqiu/android/message/model/Message;->getSequence()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    .line 181
    invoke-virtual {v15}, Lcom/xueqiu/android/message/database/key/MessageKey;->copy()Lcom/xueqiu/android/message/database/key/MessageKey;

    move-result-object v2

    .line 182
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v4}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getMessageDb()Lcom/sleepycat/b/i;

    move-result-object v4

    new-instance v5, Lcom/sleepycat/b/m;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/database/key/MessageKey;->getBytes()[B

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/sleepycat/b/m;-><init>([B)V

    invoke-virtual {v4, v3, v5}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    .line 185
    :cond_3
    sget-object v2, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v2}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getMessage(Lcom/sleepycat/b/bp;Lcom/xueqiu/android/message/database/key/MessageKey;Lcom/sleepycat/b/ao;)Lcom/xueqiu/android/message/model/Message;

    move-result-object v2

    .line 186
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    :cond_4
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 194
    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/message/database/key/MessageKey;

    .line 201
    :cond_5
    :goto_2
    if-eqz v2, :cond_9

    iget-wide v4, v2, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    iget-wide v4, v2, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    iget-wide v6, v15, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    .line 203
    move-object/from16 v0, v16

    invoke-interface {v12, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_6
    :goto_3
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mMessageBinding:Lcom/xueqiu/android/message/database/bind/MessageBinding;

    invoke-virtual {v4, v8, v2}, Lcom/xueqiu/android/message/database/bind/MessageBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/b/m;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v4}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getMessageDb()Lcom/sleepycat/b/i;

    move-result-object v4

    new-instance v5, Lcom/sleepycat/b/m;

    invoke-virtual {v15}, Lcom/xueqiu/android/message/database/key/MessageKey;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sleepycat/b/m;-><init>([B)V

    invoke-virtual {v4, v3, v5, v2}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 217
    :catch_0
    move-exception v2

    .line 218
    const-string v4, "DataStore"

    const-string v5, "saveMessages failed."

    invoke-static {v4, v5, v2}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    if-eqz v3, :cond_7

    .line 221
    :try_start_1
    invoke-virtual {v3}, Lcom/sleepycat/b/bp;->a()V
    :try_end_1
    .catch Lcom/sleepycat/b/n; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    :cond_7
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 228
    :goto_5
    const-string v2, "DataStore"

    const-string v3, "save %d messages in %dms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v9

    .line 229
    goto/16 :goto_0

    .line 196
    :cond_8
    :try_start_2
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/xueqiu/android/message/database/key/TalkKey;->id:J

    move-object/from16 v0, v16

    iget-boolean v6, v0, Lcom/xueqiu/android/message/database/key/TalkKey;->isGroup:Z

    sget-object v7, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getHeaderKey(Lcom/sleepycat/b/bp;JZLcom/sleepycat/b/ao;)Lcom/xueqiu/android/message/database/key/MessageKey;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_5

    .line 198
    move-object/from16 v0, v16

    invoke-interface {v12, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 204
    :cond_9
    if-eqz v2, :cond_a

    .line 205
    invoke-virtual {v15}, Lcom/xueqiu/android/message/database/key/MessageKey;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2}, Lcom/xueqiu/android/message/database/key/MessageKey;->getBytes()[B

    move-result-object v2

    invoke-virtual {v13, v4, v2}, Lcom/xueqiu/android/message/database/comparator/MessageComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_6

    .line 206
    :cond_a
    move-object/from16 v0, v16

    invoke-interface {v12, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 212
    :cond_b
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v4}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getTalkMessageDb()Lcom/sleepycat/b/i;

    move-result-object v6

    new-instance v7, Lcom/sleepycat/b/m;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xueqiu/android/message/database/key/TalkKey;

    invoke-virtual {v4}, Lcom/xueqiu/android/message/database/key/TalkKey;->getBytes()[B

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/sleepycat/b/m;-><init>([B)V

    new-instance v4, Lcom/sleepycat/b/m;

    .line 214
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/message/database/key/MessageKey;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/database/key/MessageKey;->getBytes()[B

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 213
    invoke-virtual {v6, v3, v7, v4}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    goto :goto_6

    .line 216
    :cond_c
    invoke-virtual {v3}, Lcom/sleepycat/b/bp;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 223
    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lcom/sleepycat/b/n;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public saveTalk(Lcom/xueqiu/android/message/model/Talk;)V
    .locals 2

    .prologue
    .line 490
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 491
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalks(Ljava/util/List;)V

    .line 493
    return-void
.end method

.method public saveTalkTimeline(JZJ)V
    .locals 5

    .prologue
    .line 576
    new-instance v0, Lcom/xueqiu/android/message/database/key/TalkKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/xueqiu/android/message/database/key/TalkKey;-><init>(JZ)V

    .line 577
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 578
    invoke-virtual {v1, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 580
    :try_start_0
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getTalkTimelineDb()Lcom/sleepycat/b/i;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/sleepycat/b/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/database/key/TalkKey;->getBytes()[B

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/sleepycat/b/m;-><init>([B)V

    new-instance v0, Lcom/sleepycat/b/m;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/m;-><init>([B)V

    invoke-virtual {v2, v3, v4, v0}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sleepycat/b/n;->printStackTrace()V

    goto :goto_0
.end method

.method public saveTalks(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Talk;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 497
    new-instance v3, Lcom/xueqiu/android/message/database/key/TalkKey;

    const-wide/16 v0, 0x0

    invoke-direct {v3, v0, v1, v10}, Lcom/xueqiu/android/message/database/key/TalkKey;-><init>(JZ)V

    .line 498
    const/4 v1, 0x0

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getDbEnv()Lcom/sleepycat/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/x;->b()Lcom/sleepycat/b/bp;
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 501
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 502
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/xueqiu/android/message/database/key/TalkKey;->id:J

    .line 503
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v1

    iput-boolean v1, v3, Lcom/xueqiu/android/message/database/key/TalkKey;->isGroup:Z

    .line 504
    new-instance v7, Lcom/sleepycat/b/m;

    invoke-virtual {v3}, Lcom/xueqiu/android/message/database/key/TalkKey;->getBytes()[B

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 505
    new-instance v8, Lcom/sleepycat/b/m;

    invoke-direct {v8}, Lcom/sleepycat/b/m;-><init>()V

    .line 506
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getTalkDb()Lcom/sleepycat/b/i;

    move-result-object v1

    sget-object v9, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v1, v2, v7, v8, v9}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v1

    sget-object v9, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v1, v9, :cond_4

    .line 510
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mTalkBinding:Lcom/xueqiu/android/message/database/bind/TalkBinding;

    invoke-virtual {v1, v8}, Lcom/xueqiu/android/message/database/bind/TalkBinding;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/message/model/Talk;

    .line 511
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 512
    :cond_1
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 514
    :cond_2
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    .line 515
    :cond_3
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 519
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mTalkBinding:Lcom/xueqiu/android/message/database/bind/TalkBinding;

    invoke-virtual {v1, v0, v8}, Lcom/xueqiu/android/message/database/bind/TalkBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/b/m;)V

    .line 520
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getTalkDb()Lcom/sleepycat/b/i;

    move-result-object v0

    invoke-virtual {v0, v2, v7, v8}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    :try_end_1
    .catch Lcom/sleepycat/b/n; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 523
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 524
    :goto_1
    const-string v2, "DataStore"

    const-string v3, "saveTalks failed."

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 525
    if-eqz v1, :cond_5

    .line 527
    :try_start_2
    invoke-virtual {v1}, Lcom/sleepycat/b/bp;->a()V
    :try_end_2
    .catch Lcom/sleepycat/b/n; {:try_start_2 .. :try_end_2} :catch_1

    .line 533
    :cond_5
    :goto_2
    const-string v0, "DataStore"

    const-string v1, "save %d talks in %dms."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-void

    .line 522
    :cond_6
    :try_start_3
    invoke-virtual {v2}, Lcom/sleepycat/b/bp;->b()V
    :try_end_3
    .catch Lcom/sleepycat/b/n; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 529
    :catch_1
    move-exception v1

    const-string v1, "DataStore"

    const-string v2, "saveTalks abort transaction failed."

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 523
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public setPref(Ljava/lang/String;[B)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 639
    if-nez p2, :cond_1

    .line 651
    :cond_0
    :goto_0
    return v0

    .line 643
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mDbEnv:Lcom/xueqiu/android/base/storage/prefs/DbEnv;

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->getUserPrefsDb()Lcom/sleepycat/b/i;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/sleepycat/b/m;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sleepycat/b/m;-><init>([B)V

    new-instance v5, Lcom/sleepycat/b/m;

    iget-object v6, p0, Lcom/xueqiu/android/base/storage/prefs/DataStore;->mSecret:[B

    .line 644
    invoke-static {p2, v6}, Lcom/snowballfinance/message/a/d;->a([B[B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 643
    invoke-virtual {v2, v3, v4, v5}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 646
    goto :goto_0

    .line 648
    :catch_0
    move-exception v2

    .line 649
    const-string v3, "DataStore"

    const-string v4, "setPref [%s:%s] failed."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateTalkInfo(Lcom/xueqiu/android/community/model/User;)V
    .locals 2

    .prologue
    .line 602
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 603
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->updateTalksInfo(Ljava/util/List;Ljava/util/List;)V

    .line 605
    return-void
.end method

.method public updateTalkInfo(Lcom/xueqiu/android/message/model/IMGroup;)V
    .locals 2

    .prologue
    .line 608
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 609
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->updateTalksInfo(Ljava/util/List;Ljava/util/List;)V

    .line 611
    return-void
.end method

.method public updateTalksInfo(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 614
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 615
    if-eqz p1, :cond_1

    .line 616
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 617
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    const/4 v3, 0x0

    invoke-virtual {p0, v4, v5, v3}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v3

    .line 618
    if-eqz v3, :cond_0

    .line 619
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileLargeImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 621
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 625
    :cond_1
    if-eqz p2, :cond_3

    .line 626
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    .line 627
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-virtual {p0, v4, v5, v3}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v3

    .line 628
    if-eqz v3, :cond_2

    .line 629
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 631
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 635
    :cond_3
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalks(Ljava/util/List;)V

    .line 636
    return-void
.end method
