.class public abstract Lcom/sleepycat/b/g/a;
.super Ljava/lang/Object;
.source "BasicVersionedWriteLoggable.java"

# interfaces
.implements Lcom/sleepycat/b/g/ax;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static a(Lcom/sleepycat/b/g/ax;Ljava/nio/ByteBuffer;I)V
    .locals 3

    .prologue
    .line 82
    .line 1102
    const/16 v0, 0x8

    if-ge p2, v0, :cond_0

    .line 1103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The requested log version, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is older than the last format change, 8, for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    invoke-interface {p0, p1}, Lcom/sleepycat/b/g/ax;->a(Ljava/nio/ByteBuffer;)V

    .line 84
    return-void
.end method


# virtual methods
.method public final b(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/sleepycat/b/g/a;->a(Lcom/sleepycat/b/g/ax;Ljava/nio/ByteBuffer;I)V

    .line 65
    return-void
.end method
