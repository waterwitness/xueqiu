.class public final Lcom/alipay/a/b/a;
.super Ljava/lang/Object;
.source "SecurityClientMobile.java"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcom/alipay/a/b/a;->a:Z

    .line 25
    sput-boolean v0, Lcom/alipay/a/b/a;->b:Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 19
    const-class v1, Lcom/alipay/a/b/a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/alipay/a/a/b;

    invoke-direct {v0, p0}, Lcom/alipay/a/a/b;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {v0, p1}, Lcom/alipay/a/a/b;->a(Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
