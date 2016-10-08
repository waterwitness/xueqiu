.class public final Lcom/sleepycat/b/i/i/i;
.super Ljava/util/concurrent/CountDownLatch;
.source "VLSNIndex.java"


# instance fields
.field public a:Lcom/sleepycat/b/g/al;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2339
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/i/i;->a:Lcom/sleepycat/b/g/al;

    .line 2336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/i/i/i;->b:Z

    .line 2340
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 2367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/i/i;->b:Z

    .line 2368
    invoke-virtual {p0}, Lcom/sleepycat/b/i/i/i;->countDown()V

    .line 2369
    return-void
.end method
