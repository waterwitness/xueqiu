.class public final Lcom/sleepycat/b/g/a/n;
.super Lcom/sleepycat/b/g/a/r;
.source "MatchpointLogEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/g/a/r",
        "<",
        "Lcom/sleepycat/b/p/aa;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sleepycat/b/p/aa;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/a/r;-><init>(Ljava/lang/Class;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/sleepycat/b/g/a/r;->a(I)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/g/a/r;->a(Ljava/nio/ByteBuffer;I)V

    return-void
.end method
