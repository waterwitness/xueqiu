.class public Lcom/sleepycat/b/i/e/an;
.super Lcom/sleepycat/b/i/e/al;
.source "Protocol.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/e/t;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/e/t;)V
    .locals 1

    .prologue
    .line 350
    iput-object p1, p0, Lcom/sleepycat/b/i/e/an;->a:Lcom/sleepycat/b/i/e/t;

    .line 351
    invoke-static {}, Lcom/sleepycat/b/i/e/t;->a()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/i/e/al;-><init>(Lcom/sleepycat/b/i/e/t;I)V

    .line 352
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 360
    sget-object v0, Lcom/sleepycat/b/i/e/t;->a:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 348
    invoke-super {p0}, Lcom/sleepycat/b/i/e/al;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
