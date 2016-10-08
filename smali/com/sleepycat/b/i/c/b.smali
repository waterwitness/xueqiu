.class public Lcom/sleepycat/b/i/c/b;
.super Lcom/sleepycat/b/i/h/k;
.source "BinaryNodeStateProtocol.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final synthetic c:Lcom/sleepycat/b/i/c/a;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b;->c:Lcom/sleepycat/b/i/c/a;

    .line 59
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/k;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 60
    iput-object p2, p0, Lcom/sleepycat/b/i/c/b;->a:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/sleepycat/b/i/c/b;->b:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/sleepycat/b/i/c/a;->a:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/b;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
