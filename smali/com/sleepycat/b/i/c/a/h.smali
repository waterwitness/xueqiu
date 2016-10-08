.class public Lcom/sleepycat/b/i/c/a/h;
.super Lcom/sleepycat/b/i/c/a/j;
.source "Protocol.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/c/a/d;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/a/d;Ljava/lang/String;JJ[B)V
    .locals 1

    .prologue
    .line 375
    iput-object p1, p0, Lcom/sleepycat/b/i/c/a/h;->a:Lcom/sleepycat/b/i/c/a/d;

    .line 376
    invoke-direct/range {p0 .. p7}, Lcom/sleepycat/b/i/c/a/j;-><init>(Lcom/sleepycat/b/i/c/a/d;Ljava/lang/String;JJ[B)V

    .line 377
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/h;->a:Lcom/sleepycat/b/i/c/a/d;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/d;->g:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 390
    invoke-super {p0}, Lcom/sleepycat/b/i/c/a/j;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
