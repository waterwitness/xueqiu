.class public Lcom/xueqiu/android/base/storage/prefs/DbEnv;
.super Ljava/lang/Object;
.source "DbEnv.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DbEnv"

.field private static dbNo:I


# instance fields
.field private dbEnv:Lcom/sleepycat/b/x;

.field private messageDb:Lcom/sleepycat/b/i;

.field private talkDb:Lcom/sleepycat/b/i;

.field private talkMessageDb:Lcom/sleepycat/b/i;

.field private talkTimelineDb:Lcom/sleepycat/b/i;

.field private userPrefsDb:Lcom/sleepycat/b/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbNo:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createConfig(ZLjava/lang/Class;)Lcom/sleepycat/b/l;
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    new-instance v2, Lcom/sleepycat/b/l;

    invoke-direct {v2}, Lcom/sleepycat/b/l;-><init>()V

    .line 4349
    iput-boolean v0, v2, Lcom/sleepycat/b/l;->d:Z

    .line 95
    if-nez p1, :cond_0

    .line 5151
    :goto_0
    iput-boolean v0, v2, Lcom/sleepycat/b/l;->b:Z

    .line 5384
    iput-boolean p1, v2, Lcom/sleepycat/b/l;->e:Z

    .line 97
    invoke-virtual {v2, v1}, Lcom/sleepycat/b/l;->a(Z)Lcom/sleepycat/b/l;

    .line 98
    invoke-virtual {v2, p2}, Lcom/sleepycat/b/l;->a(Ljava/lang/Class;)Lcom/sleepycat/b/l;

    .line 99
    return-object v2

    :cond_0
    move v0, v1

    .line 95
    goto :goto_0
.end method


# virtual methods
.method public clearData()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;

    invoke-virtual {v0}, Lcom/sleepycat/b/x;->b()Lcom/sleepycat/b/bp;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->messageDb:Lcom/sleepycat/b/i;

    invoke-virtual {v1}, Lcom/sleepycat/b/i;->close()V

    .line 80
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->talkDb:Lcom/sleepycat/b/i;

    invoke-virtual {v1}, Lcom/sleepycat/b/i;->close()V

    .line 81
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->talkMessageDb:Lcom/sleepycat/b/i;

    invoke-virtual {v1}, Lcom/sleepycat/b/i;->close()V

    .line 82
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->talkTimelineDb:Lcom/sleepycat/b/i;

    invoke-virtual {v1}, Lcom/sleepycat/b/i;->close()V

    .line 83
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->userPrefsDb:Lcom/sleepycat/b/i;

    invoke-virtual {v1}, Lcom/sleepycat/b/i;->close()V

    .line 84
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;

    const-string v2, "message"

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/x;->a(Lcom/sleepycat/b/bp;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;

    const-string v2, "talk"

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/x;->a(Lcom/sleepycat/b/bp;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;

    const-string v2, "talk_message"

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/x;->a(Lcom/sleepycat/b/bp;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;

    const-string v2, "talk_timeline"

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/x;->a(Lcom/sleepycat/b/bp;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;

    const-string v2, "user_prefs"

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/x;->a(Lcom/sleepycat/b/bp;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Lcom/sleepycat/b/bp;->b()V

    .line 90
    return-void
.end method

.method public close()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 103
    const-string v0, "DbEnv"

    const-string v1, "close database env:%d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbNo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->messageDb:Lcom/sleepycat/b/i;

    if-eqz v0, :cond_0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->messageDb:Lcom/sleepycat/b/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/i;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->talkDb:Lcom/sleepycat/b/i;

    if-eqz v0, :cond_1

    .line 113
    :try_start_1
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->talkDb:Lcom/sleepycat/b/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/i;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->talkMessageDb:Lcom/sleepycat/b/i;

    if-eqz v0, :cond_2

    .line 120
    :try_start_2
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->talkMessageDb:Lcom/sleepycat/b/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/i;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->talkTimelineDb:Lcom/sleepycat/b/i;

    if-eqz v0, :cond_3

    .line 127
    :try_start_3
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->talkTimelineDb:Lcom/sleepycat/b/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/i;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 133
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->userPrefsDb:Lcom/sleepycat/b/i;

    if-eqz v0, :cond_4

    .line 135
    :try_start_4
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->userPrefsDb:Lcom/sleepycat/b/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/i;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 140
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;

    if-eqz v0, :cond_5

    .line 142
    :try_start_5
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 5551
    :try_start_6
    invoke-virtual {v1}, Lcom/sleepycat/b/x;->e()V

    .line 5552
    invoke-virtual {v1}, Lcom/sleepycat/b/x;->g()V

    .line 5553
    new-instance v0, Lcom/sleepycat/b/c;

    invoke-direct {v0}, Lcom/sleepycat/b/c;-><init>()V

    .line 6123
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sleepycat/b/c;->b:Z

    .line 6157
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sleepycat/b/c;->e:Z

    .line 5556
    iget-object v2, v1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    const-string v3, "sync"

    invoke-virtual {v2, v0, v3}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/c;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 148
    :goto_5
    :try_start_7
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    .line 6591
    :try_start_8
    invoke-virtual {v1}, Lcom/sleepycat/b/x;->e()V

    .line 6592
    invoke-virtual {v1}, Lcom/sleepycat/b/x;->g()V

    .line 6593
    iget-object v0, v1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 7084
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/am;->a()V
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 154
    :goto_6
    :try_start_9
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;

    invoke-virtual {v0}, Lcom/sleepycat/b/x;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 159
    :cond_5
    :goto_7
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, "DbEnv"

    const-string v2, "close message_db error."

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    .line 115
    const-string v1, "DbEnv"

    const-string v2, "close talk_db error."

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 121
    :catch_2
    move-exception v0

    .line 122
    const-string v1, "DbEnv"

    const-string v2, "close talk_message_db error."

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 128
    :catch_3
    move-exception v0

    .line 129
    const-string v1, "DbEnv"

    const-string v2, "close talk_timeline_db error."

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 136
    :catch_4
    move-exception v0

    .line 137
    const-string v1, "DbEnv"

    const-string v2, "close user_pref_db error."

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 5557
    :catch_5
    move-exception v0

    .line 5558
    :try_start_a
    iget-object v2, v1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    if-eqz v2, :cond_6

    .line 5559
    iget-object v1, v1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 5561
    :cond_6
    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    .line 143
    :catch_6
    move-exception v0

    .line 144
    const-string v1, "DbEnv"

    const-string v2, "close env error."

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 6594
    :catch_7
    move-exception v0

    .line 6595
    :try_start_b
    iget-object v2, v1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    if-eqz v2, :cond_7

    .line 6596
    iget-object v1, v1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 6598
    :cond_7
    throw v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    .line 149
    :catch_8
    move-exception v0

    .line 150
    const-string v1, "DbEnv"

    const-string v2, "close flushLog error."

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 155
    :catch_9
    move-exception v0

    .line 156
    const-string v1, "DbEnv"

    const-string v2, "close env error."

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public getDbEnv()Lcom/sleepycat/b/x;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;

    return-object v0
.end method

.method public getMessageDb()Lcom/sleepycat/b/i;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->messageDb:Lcom/sleepycat/b/i;

    return-object v0
.end method

.method public getTalkDb()Lcom/sleepycat/b/i;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->talkDb:Lcom/sleepycat/b/i;

    return-object v0
.end method

.method public getTalkMessageDb()Lcom/sleepycat/b/i;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->talkMessageDb:Lcom/sleepycat/b/i;

    return-object v0
.end method

.method public getTalkTimelineDb()Lcom/sleepycat/b/i;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->talkTimelineDb:Lcom/sleepycat/b/i;

    return-object v0
.end method

.method public getUserPrefsDb()Lcom/sleepycat/b/i;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->userPrefsDb:Lcom/sleepycat/b/i;

    return-object v0
.end method

.method public setup(Ljava/io/File;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    const-string v0, "DbEnv"

    const-string v3, "setup database env:%d"

    new-array v4, v1, [Ljava/lang/Object;

    sget v5, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbNo:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbNo:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v3, Lcom/sleepycat/b/z;

    invoke-direct {v3}, Lcom/sleepycat/b/z;-><init>()V

    .line 49
    invoke-virtual {v3, p2}, Lcom/sleepycat/b/z;->a(Z)Lcom/sleepycat/b/z;

    .line 50
    if-nez p2, :cond_1

    move v0, v1

    .line 3943
    :goto_0
    iput-boolean v0, v3, Lcom/sleepycat/b/z;->d:Z

    .line 51
    invoke-virtual {v3}, Lcom/sleepycat/b/z;->b()Lcom/sleepycat/b/z;

    .line 52
    invoke-virtual {v3}, Lcom/sleepycat/b/z;->e()V

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const-string v0, "DbEnv"

    const-string v4, "create directory %s failed."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    :try_start_0
    new-instance v0, Lcom/sleepycat/b/x;

    invoke-direct {v0, p1, v3}, Lcom/sleepycat/b/x;-><init>(Ljava/io/File;Lcom/sleepycat/b/z;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;

    invoke-virtual {v0}, Lcom/sleepycat/b/x;->b()Lcom/sleepycat/b/bp;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;

    const-string v2, "message"

    const-class v3, Lcom/xueqiu/android/message/database/comparator/MessageComparator;

    invoke-direct {p0, p2, v3}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->createConfig(ZLjava/lang/Class;)Lcom/sleepycat/b/l;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sleepycat/b/x;->a(Lcom/sleepycat/b/bp;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/i;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->messageDb:Lcom/sleepycat/b/i;

    .line 70
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;

    const-string v2, "talk"

    const-class v3, Lcom/xueqiu/android/message/database/comparator/TalkComparator;

    invoke-direct {p0, p2, v3}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->createConfig(ZLjava/lang/Class;)Lcom/sleepycat/b/l;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sleepycat/b/x;->a(Lcom/sleepycat/b/bp;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/i;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->talkDb:Lcom/sleepycat/b/i;

    .line 71
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;

    const-string v2, "talk_message"

    const-class v3, Lcom/xueqiu/android/message/database/comparator/TalkComparator;

    invoke-direct {p0, p2, v3}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->createConfig(ZLjava/lang/Class;)Lcom/sleepycat/b/l;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sleepycat/b/x;->a(Lcom/sleepycat/b/bp;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/i;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->talkMessageDb:Lcom/sleepycat/b/i;

    .line 72
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;

    const-string v2, "talk_timeline"

    const-class v3, Lcom/xueqiu/android/message/database/comparator/TalkComparator;

    invoke-direct {p0, p2, v3}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->createConfig(ZLjava/lang/Class;)Lcom/sleepycat/b/l;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sleepycat/b/x;->a(Lcom/sleepycat/b/bp;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/i;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->talkTimelineDb:Lcom/sleepycat/b/i;

    .line 73
    iget-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;

    const-string v2, "user_prefs"

    const-class v3, Lcom/xueqiu/android/message/database/comparator/StringComparator;

    invoke-direct {p0, p2, v3}, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->createConfig(ZLjava/lang/Class;)Lcom/sleepycat/b/l;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sleepycat/b/x;->a(Lcom/sleepycat/b/bp;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/i;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->userPrefsDb:Lcom/sleepycat/b/i;

    .line 74
    invoke-virtual {v0}, Lcom/sleepycat/b/bp;->b()V

    .line 75
    return-void

    :cond_1
    move v0, v2

    .line 50
    goto/16 :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v1, "DbEnv"

    const-string v2, "open db failed, will try again."

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    :try_start_1
    invoke-static {p1}, Lcom/xueqiu/android/base/util/k;->b(Ljava/io/File;)V

    .line 62
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :goto_2
    new-instance v0, Lcom/sleepycat/b/x;

    invoke-direct {v0, p1, v3}, Lcom/sleepycat/b/x;-><init>(Ljava/io/File;Lcom/sleepycat/b/z;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/storage/prefs/DbEnv;->dbEnv:Lcom/sleepycat/b/x;

    goto :goto_1

    .line 64
    :catch_1
    move-exception v1

    const-string v1, "DbEnv"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
