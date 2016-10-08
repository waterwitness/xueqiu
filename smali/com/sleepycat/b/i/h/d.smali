.class public abstract Lcom/sleepycat/b/i/h/d;
.super Ljava/lang/Object;
.source "BinaryProtocol.java"


# instance fields
.field final synthetic j:Lcom/sleepycat/b/i/h/a;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/h/a;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/sleepycat/b/i/h/d;->j:Lcom/sleepycat/b/i/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/sleepycat/b/i/h/e;
.end method

.method public final a(I)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/sleepycat/b/i/h/d;->j:Lcom/sleepycat/b/i/h/a;

    add-int/lit8 v1, p1, 0x6

    invoke-static {v0, v1}, Lcom/sleepycat/b/i/h/a;->a(Lcom/sleepycat/b/i/h/a;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 637
    invoke-virtual {p0}, Lcom/sleepycat/b/i/h/d;->a()Lcom/sleepycat/b/i/h/e;

    move-result-object v1

    .line 1365
    iget-short v1, v1, Lcom/sleepycat/b/i/h/e;->a:S

    .line 637
    invoke-static {v0, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;S)V

    .line 638
    invoke-static {v0, p1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 639
    return-object v0
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/h/d;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 609
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/sleepycat/b/i/h/d;->a()Lcom/sleepycat/b/i/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
