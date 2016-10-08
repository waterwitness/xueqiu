.class public Lcom/sleepycat/b/i/e/aa;
.super Lcom/sleepycat/b/i/e/av;
.source "Protocol.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/e/t;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/p/au;)V
    .locals 0

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/sleepycat/b/i/e/aa;->a:Lcom/sleepycat/b/i/e/t;

    .line 1179
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/e/av;-><init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/p/au;)V

    .line 1180
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 1188
    sget-object v0, Lcom/sleepycat/b/i/e/t;->r:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 1176
    invoke-super {p0}, Lcom/sleepycat/b/i/e/av;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1176
    invoke-super {p0}, Lcom/sleepycat/b/i/e/av;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
