.class public Lcom/sleepycat/b/i/e/ak;
.super Lcom/sleepycat/b/i/h/i;
.source "Protocol.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/e/t;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/e/t;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/sleepycat/b/i/e/ak;->a:Lcom/sleepycat/b/i/e/t;

    .line 735
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/h/i;-><init>(Lcom/sleepycat/b/i/h/a;Ljava/lang/String;)V

    .line 736
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 740
    sget-object v0, Lcom/sleepycat/b/i/e/t;->i:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 745
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/e/ak;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/e/ak;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
