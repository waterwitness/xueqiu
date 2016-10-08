.class public final Lcom/xueqiu/android/base/util/ag;
.super Ljava/lang/Object;
.source "Pools.java"


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Lrx/g;

.field public static final c:Lrx/h;

.field public static final d:Lrx/h;

.field private static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 21
    sput v0, Lcom/xueqiu/android/base/util/ag;->e:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 22
    sput-object v0, Lcom/xueqiu/android/base/util/ag;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lrx/h/p;->a(Ljava/util/concurrent/Executor;)Lrx/g;

    move-result-object v0

    .line 23
    sput-object v0, Lcom/xueqiu/android/base/util/ag;->b:Lrx/g;

    invoke-virtual {v0}, Lrx/g;->a()Lrx/h;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    .line 24
    invoke-static {}, Lrx/a/d/a;->a()Lrx/g;

    move-result-object v0

    invoke-virtual {v0}, Lrx/g;->a()Lrx/h;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    return-void
.end method
