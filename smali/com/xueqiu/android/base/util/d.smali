.class public final Lcom/xueqiu/android/base/util/d;
.super Ljava/lang/Object;
.source "CipherEngine.java"


# static fields
.field static a:Ljava/lang/String;

.field static b:B

.field private static c:Lcom/xueqiu/android/base/util/d;


# instance fields
.field private d:Lcom/xueqiu/android/base/util/Cipher;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "utf-8"

    sput-object v0, Lcom/xueqiu/android/base/util/d;->a:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-byte v0, Lcom/xueqiu/android/base/util/d;->b:B

    .line 27
    new-instance v0, Lcom/xueqiu/android/base/util/d;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/d;-><init>()V

    sput-object v0, Lcom/xueqiu/android/base/util/d;->c:Lcom/xueqiu/android/base/util/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/xueqiu/android/base/util/Cipher;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/Cipher;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/base/util/d;->d:Lcom/xueqiu/android/base/util/Cipher;

    .line 31
    iput v1, p0, Lcom/xueqiu/android/base/util/d;->e:I

    .line 34
    iput v1, p0, Lcom/xueqiu/android/base/util/d;->e:I

    .line 35
    return-void
.end method

.method public static a()Lcom/xueqiu/android/base/util/d;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/xueqiu/android/base/util/d;->c:Lcom/xueqiu/android/base/util/d;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    :goto_0
    return-object v0

    .line 87
    :cond_0
    :try_start_0
    sget-object v1, Lcom/xueqiu/android/base/util/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 88
    array-length v1, v2

    rem-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v3, v1, 0x10

    .line 89
    const/16 v1, 0x10

    if-eq v3, v1, :cond_1

    .line 90
    new-array v4, v3, [B

    .line 91
    array-length v1, v2

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 95
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    const/4 v5, 0x0

    array-length v2, v2

    invoke-static {v4, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 98
    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 100
    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static b([B)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    array-length v2, p0

    if-nez v2, :cond_0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    move v2, v1

    .line 113
    :goto_1
    :try_start_0
    array-length v1, p0

    if-ge v2, v1, :cond_1

    .line 114
    aget-byte v1, p0, v2

    sget-byte v3, Lcom/xueqiu/android/base/util/d;->b:B

    if-eq v1, v3, :cond_1

    .line 113
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 118
    :cond_1
    new-array v1, v2, [B

    .line 119
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 120
    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 62
    :cond_0
    const-string v0, ""

    .line 79
    :goto_0
    return-object v0

    .line 64
    :cond_1
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 65
    const-string v0, "solory"

    const-string v1, "cipher data has broken"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, ""

    goto :goto_0

    .line 69
    :cond_2
    :try_start_0
    array-length v0, p1

    new-array v1, v0, [B

    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/base/util/d;->d:Lcom/xueqiu/android/base/util/Cipher;

    array-length v2, p1

    iget v3, p0, Lcom/xueqiu/android/base/util/d;->e:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/xueqiu/android/base/util/Cipher;->decrypt([B[BII)I

    move-result v0

    .line 71
    if-lez v0, :cond_3

    .line 72
    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/xueqiu/android/base/util/d;->b([B)[B

    move-result-object v1

    sget-object v2, Lcom/xueqiu/android/base/util/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :goto_1
    const-string v0, " "

    goto :goto_0

    .line 74
    :cond_3
    :try_start_1
    const-string v0, "CipherEngine"

    const-string v1, "cipher key is wrong"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    :goto_0
    return-object v0

    .line 46
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/xueqiu/android/base/util/d;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 47
    array-length v1, v2

    new-array v1, v1, [B

    .line 48
    iget-object v3, p0, Lcom/xueqiu/android/base/util/d;->d:Lcom/xueqiu/android/base/util/Cipher;

    array-length v4, v2

    iget v5, p0, Lcom/xueqiu/android/base/util/d;->e:I

    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/xueqiu/android/base/util/Cipher;->encrypt([B[BII)I

    move-result v2

    .line 49
    if-lez v2, :cond_1

    move-object v0, v1

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    const-string v1, "CipherEngine"

    const-string v2, "cipher key is wrong"

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
