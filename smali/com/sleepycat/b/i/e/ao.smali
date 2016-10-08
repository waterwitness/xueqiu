.class public Lcom/sleepycat/b/i/e/ao;
.super Lcom/sleepycat/b/i/e/av;
.source "Protocol.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/e/t;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/p/au;)V
    .locals 0

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/sleepycat/b/i/e/ao;->a:Lcom/sleepycat/b/i/e/t;

    .line 1268
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/e/av;-><init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/p/au;)V

    .line 1269
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 1277
    sget-object v0, Lcom/sleepycat/b/i/e/t;->u:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 1265
    invoke-super {p0}, Lcom/sleepycat/b/i/e/av;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1265
    invoke-super {p0}, Lcom/sleepycat/b/i/e/av;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
