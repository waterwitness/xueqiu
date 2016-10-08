.class public final Lcom/sleepycat/b/g/a/s;
.super Lcom/sleepycat/b/g/a/r;
.source "TraceLogEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/g/a/r",
        "<",
        "Lcom/sleepycat/b/g/aw;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:Lcom/sleepycat/b/g/at;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/sleepycat/b/g/a/s;->e:Lcom/sleepycat/b/g/at;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/sleepycat/b/g/aw;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/a/r;-><init>(Ljava/lang/Class;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/g/aw;)V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sleepycat/b/g/af;->x:Lcom/sleepycat/b/g/af;

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/b/g/a/r;-><init>(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/ax;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/sleepycat/b/g/a/s;->e:Lcom/sleepycat/b/g/at;

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 73
    sget-object v0, Lcom/sleepycat/b/g/a/s;->e:Lcom/sleepycat/b/g/at;

    invoke-interface {v0}, Lcom/sleepycat/b/g/at;->a()I

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/b/g/a/r;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/sleepycat/b/g/a/s;->e:Lcom/sleepycat/b/g/at;

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    .line 88
    sget-object v0, Lcom/sleepycat/b/g/a/s;->e:Lcom/sleepycat/b/g/at;

    invoke-interface {v0, p1}, Lcom/sleepycat/b/g/at;->a(Ljava/nio/ByteBuffer;)V

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/g/a/r;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_0
.end method
