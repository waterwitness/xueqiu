.class public final Lcom/pingan/a/a/e;
.super Ljava/lang/Object;
.source "LogM.java"


# static fields
.field static a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static d:Ljava/util/concurrent/ExecutorService;

.field private static e:Ljava/lang/Boolean;

.field private static f:Ljava/text/SimpleDateFormat;

.field private static g:Ljava/text/SimpleDateFormat;

.field private static h:Ljava/lang/String;

.field private static i:I

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    const-string v0, "LogM"

    sput-object v0, Lcom/pingan/a/a/e;->a:Ljava/lang/String;

    .line 25
    sput v2, Lcom/pingan/a/a/e;->b:I

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/pingan/a/a/e;->c:I

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/pingan/a/a/e;->d:Ljava/util/concurrent/ExecutorService;

    .line 30
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/pingan/a/a/e;->e:Ljava/lang/Boolean;

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/pingan/a/a/e;->f:Ljava/text/SimpleDateFormat;

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/pingan/a/a/e;->g:Ljava/text/SimpleDateFormat;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "PinganSDK/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pingan/a/a/e;->h:Ljava/lang/String;

    .line 34
    sput v2, Lcom/pingan/a/a/e;->i:I

    .line 35
    const-string v0, "Log.txt"

    sput-object v0, Lcom/pingan/a/a/e;->j:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    sput-object v0, Lcom/pingan/a/a/e;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/pingan/a/a/e;->f:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static a(I)V
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 261
    .line 262
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/pingan/main/PAVideoSdkApiManager;->getLogRootPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 263
    if-nez v4, :cond_1

    .line 293
    :cond_0
    return-void

    .line 266
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move v0, v1

    move v2, v1

    .line 269
    :goto_0
    array-length v3, v4

    if-ge v0, v3, :cond_0

    .line 270
    aget-object v3, v4, v0

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 271
    const-string v3, "lastModified"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "delete--||||===now-----"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "----date="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1042
    new-instance v10, Ljava/text/SimpleDateFormat;

    .line 1043
    const-string v11, "yyyy-MM-dd HH:mm:ss:SSS"

    .line 1042
    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1044
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 271
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v3, "lastModified"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "delete--||||==="

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v4, v0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "-----"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v3, "upload"

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 275
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/main/PAVideoSdkApiManager;->getLogRootPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/upload"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    move v3, v1

    .line 276
    :goto_1
    array-length v10, v5

    if-lt v3, v10, :cond_5

    .line 283
    :cond_2
    aget-object v3, v4, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_7

    mul-int/lit8 v3, p0, 0x18

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v10, v3

    sub-long v10, v6, v10

    cmp-long v3, v8, v10

    if-gez v3, :cond_7

    const-string v3, "upload"

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 284
    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/pingan/a/a/e;->a(Ljava/io/File;)Z

    move-result v2

    .line 288
    :cond_3
    :goto_2
    if-nez v2, :cond_4

    .line 289
    sget-object v3, Lcom/pingan/a/a/e;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v8, v4, v0

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\u5220\u9664\u5931\u8d25\uff0c\u7b49\u5f85\u4e0b\u6b21\u5220\u9664\uff01"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 277
    :cond_5
    aget-object v10, v5, v3

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 278
    const-wide/32 v12, 0x36ee80

    sub-long v12, v6, v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_6

    .line 279
    aget-object v10, v5, v3

    invoke-static {v10}, Lcom/pingan/a/a/e;->b(Ljava/io/File;)Z

    .line 276
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 285
    :cond_7
    aget-object v3, v4, v0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    mul-int/lit8 v3, p0, 0x18

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v10, v3

    sub-long v10, v6, v10

    cmp-long v3, v8, v10

    if-gez v3, :cond_3

    .line 286
    aget-object v2, v4, v0

    invoke-static {v2}, Lcom/pingan/a/a/e;->b(Ljava/io/File;)Z

    move-result v2

    goto :goto_2
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/pingan/a/a/e;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/pingan/a/a/e;->c:I

    if-lt v0, p0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string v0, "LogM"

    const-string v1, "writeLogtoFile-start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v0, Lcom/pingan/a/a/e;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/pingan/a/a/e$2;

    invoke-direct {v1, p1, p2, p3}, Lcom/pingan/a/a/e$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 129
    const-string v0, "LogM"

    const-string v1, "writeDeviceInfoForLog-start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v0, Lcom/pingan/a/a/e;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 133
    :cond_0
    sget-object v0, Lcom/pingan/a/a/e;->k:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 134
    invoke-static {p0}, Lcom/pingan/a/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pingan/a/a/e;->k:Ljava/lang/String;

    .line 137
    :cond_1
    sget-object v0, Lcom/pingan/a/a/e;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/pingan/a/a/e$1;

    invoke-direct {v1, p0}, Lcom/pingan/a/a/e$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 78
    sget v0, Lcom/pingan/a/a/e;->b:I

    if-le v2, v0, :cond_0

    .line 79
    sget-object v0, Lcom/pingan/a/a/e;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "i"

    sget-object v1, Lcom/pingan/a/a/e;->a:Ljava/lang/String;

    invoke-static {v2, v0, v1, p0}, Lcom/pingan/a/a/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 71
    sget v0, Lcom/pingan/a/a/e;->b:I

    if-le v1, v0, :cond_0

    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "d"

    invoke-static {v1, v0, p0, p1}, Lcom/pingan/a/a/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 120
    sget v0, Lcom/pingan/a/a/e;->b:I

    if-le v1, v0, :cond_0

    .line 121
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    const-string v0, "e"

    invoke-static {v1, v0, p0, p1}, Lcom/pingan/a/a/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 226
    .line 227
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 233
    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_3

    .line 234
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0

    .line 237
    :cond_3
    array-length v2, v1

    :goto_1
    if-lt v0, v2, :cond_4

    .line 240
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0

    .line 237
    :cond_4
    aget-object v3, v1, v0

    .line 238
    invoke-static {v3}, Lcom/pingan/a/a/e;->a(Ljava/io/File;)Z

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic b()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/pingan/a/a/e;->g:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 85
    sget v0, Lcom/pingan/a/a/e;->b:I

    if-le v1, v0, :cond_0

    .line 86
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v0, "i"

    invoke-static {v1, v0, p0, p1}, Lcom/pingan/a/a/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method private static b(Ljava/io/File;)Z
    .locals 3

    .prologue
    .line 253
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/pingan/a/a/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 99
    sget v0, Lcom/pingan/a/a/e;->b:I

    if-le v1, v0, :cond_0

    .line 100
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "w"

    invoke-static {v1, v0, p0, p1}, Lcom/pingan/a/a/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/pingan/a/a/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 113
    sget v0, Lcom/pingan/a/a/e;->b:I

    if-le v1, v0, :cond_0

    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v0, "e"

    invoke-static {v1, v0, p0, p1}, Lcom/pingan/a/a/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/pingan/a/a/e;->j:Ljava/lang/String;

    return-object v0
.end method
