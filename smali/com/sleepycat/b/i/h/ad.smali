.class public abstract Lcom/sleepycat/b/i/h/ad;
.super Ljava/lang/Object;
.source "ServiceDispatcher.java"


# instance fields
.field private a:Z

.field final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/i/h/ad;->a:Z

    .line 740
    if-nez p1, :cond_0

    .line 741
    const-string v0, "Service name was null"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 744
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/i/h/ad;->d:Ljava/lang/String;

    .line 745
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 766
    iget-boolean v0, p0, Lcom/sleepycat/b/i/h/ad;->a:Z

    return v0
.end method

.method abstract d(Ljava/nio/channels/SocketChannel;)V
.end method
