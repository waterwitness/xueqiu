.class public Lcom/sleepycat/b/i/h/j;
.super Lcom/sleepycat/b/i/h/h;
.source "BinaryProtocol.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/h/a;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/h/a;)V
    .locals 1

    .prologue
    .line 973
    iput-object p1, p0, Lcom/sleepycat/b/i/h/j;->a:Lcom/sleepycat/b/i/h/a;

    .line 974
    iget v0, p1, Lcom/sleepycat/b/i/h/a;->A:I

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/i/h/h;-><init>(Lcom/sleepycat/b/i/h/a;I)V

    .line 975
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/sleepycat/b/i/h/j;->a:Lcom/sleepycat/b/i/h/a;

    iget-object v0, v0, Lcom/sleepycat/b/i/h/a;->E:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 971
    invoke-super {p0}, Lcom/sleepycat/b/i/h/h;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c()I
    .locals 1

    .prologue
    .line 971
    invoke-super {p0}, Lcom/sleepycat/b/i/h/h;->c()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic d()I
    .locals 1

    .prologue
    .line 971
    invoke-super {p0}, Lcom/sleepycat/b/i/h/h;->d()I

    move-result v0

    return v0
.end method
