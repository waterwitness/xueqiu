.class public final Lcom/sleepycat/b/g/a/h;
.super Lcom/sleepycat/b/g/a/q;
.source "FileHeaderEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/g/a/q",
        "<",
        "Lcom/sleepycat/b/g/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/l;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/g/a/q;-><init>(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/at;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/sleepycat/b/g/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sleepycat/b/g/a/q;-><init>(Ljava/lang/Class;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/b/g/a/q;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V

    .line 1102
    iget-object v0, p0, Lcom/sleepycat/b/g/a/q;->c:Lcom/sleepycat/b/g/at;

    .line 45
    check-cast v0, Lcom/sleepycat/b/g/l;

    .line 2050
    iget v0, v0, Lcom/sleepycat/b/g/l;->c:I

    .line 2271
    iput v0, p2, Lcom/sleepycat/b/g/ae;->f:I

    .line 47
    return-void
.end method
