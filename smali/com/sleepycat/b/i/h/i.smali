.class public abstract Lcom/sleepycat/b/i/h/i;
.super Lcom/sleepycat/b/i/h/k;
.source "BinaryProtocol.java"


# instance fields
.field public b:Ljava/lang/String;

.field final synthetic c:Lcom/sleepycat/b/i/h/a;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/h/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 863
    iput-object p1, p0, Lcom/sleepycat/b/i/h/i;->c:Lcom/sleepycat/b/i/h/a;

    .line 864
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/k;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 870
    if-nez p2, :cond_0

    .line 871
    const-string v0, " "

    iput-object v0, p0, Lcom/sleepycat/b/i/h/i;->b:Ljava/lang/String;

    .line 875
    :goto_0
    return-void

    .line 873
    :cond_0
    iput-object p2, p0, Lcom/sleepycat/b/i/h/i;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public b()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 879
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/h/i;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/h/i;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/sleepycat/b/i/h/i;->b:Ljava/lang/String;

    return-object v0
.end method
