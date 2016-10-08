.class public Lcom/alipay/euler/andfix/Compat;
.super Ljava/lang/Object;
.source "Compat.java"


# static fields
.field public static isChecked:Z

.field public static isSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/alipay/euler/andfix/Compat;->isChecked:Z

    .line 32
    sput-boolean v0, Lcom/alipay/euler/andfix/Compat;->isSupport:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static inBlackList()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized isSupport()Z
    .locals 2

    .prologue
    .line 40
    const-class v1, Lcom/alipay/euler/andfix/Compat;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alipay/euler/andfix/Compat;->isChecked:Z

    if-eqz v0, :cond_0

    .line 41
    sget-boolean v0, Lcom/alipay/euler/andfix/Compat;->isSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_0
    monitor-exit v1

    return v0

    .line 43
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/alipay/euler/andfix/Compat;->isChecked:Z

    .line 45
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isYunOS()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/euler/andfix/AndFix;->setup()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isSupportSDKVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/euler/andfix/Compat;->isSupport:Z

    .line 49
    :cond_1
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->inBlackList()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/euler/andfix/Compat;->isSupport:Z

    .line 53
    :cond_2
    sget-boolean v0, Lcom/alipay/euler/andfix/Compat;->isSupport:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isSupportSDKVersion()Z
    .locals 2

    .prologue
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isYunOS()Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 61
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 63
    const/4 v0, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ro.yunos.version"

    aput-object v7, v5, v6

    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "java.vm.name"

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "lemur"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    move v0, v2

    .line 72
    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v0, v4

    :goto_2
    move-object v1, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method
