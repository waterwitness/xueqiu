.class public final Lu/aly/gv;
.super Ljava/lang/Object;
.source "CacheService.java"

# interfaces
.implements Lu/aly/gz;


# static fields
.field private static c:Lu/aly/gv;


# instance fields
.field public a:Lu/aly/gz;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/gv;->b:Landroid/content/Context;

    .line 18
    new-instance v0, Lu/aly/j;

    iget-object v1, p0, Lu/aly/gv;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/gv;->a:Lu/aly/gz;

    .line 19
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/gv;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lu/aly/gv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/gv;->c:Lu/aly/gv;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 23
    new-instance v0, Lu/aly/gv;

    invoke-direct {v0, p0}, Lu/aly/gv;-><init>(Landroid/content/Context;)V

    sput-object v0, Lu/aly/gv;->c:Lu/aly/gv;

    .line 26
    :cond_0
    sget-object v0, Lu/aly/gv;->c:Lu/aly/gv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lu/aly/gv$2;

    invoke-direct {v0, p0}, Lu/aly/gv$2;-><init>(Lu/aly/gv;)V

    invoke-static {v0}, Lcom/umeng/analytics/e;->b(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public final a(Lu/aly/ha;)V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lu/aly/gv$1;

    invoke-direct {v0, p0, p1}, Lu/aly/gv$1;-><init>(Lu/aly/gv;Lu/aly/ha;)V

    invoke-static {v0}, Lcom/umeng/analytics/e;->b(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lu/aly/gv$3;

    invoke-direct {v0, p0}, Lu/aly/gv$3;-><init>(Lu/aly/gv;)V

    invoke-static {v0}, Lcom/umeng/analytics/e;->b(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public final b(Lu/aly/ha;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lu/aly/gv;->a:Lu/aly/gz;

    invoke-interface {v0, p1}, Lu/aly/gz;->b(Lu/aly/ha;)V

    .line 49
    return-void
.end method
