.class final Lcom/sleepycat/b/g/ac;
.super Ljava/lang/Object;
.source "LogBufferSegment.java"


# instance fields
.field final a:Lcom/sleepycat/b/g/aa;

.field final b:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/g/aa;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sleepycat/b/g/ac;->a:Lcom/sleepycat/b/g/aa;

    .line 16
    iput-object p2, p0, Lcom/sleepycat/b/g/ac;->b:Ljava/nio/ByteBuffer;

    .line 17
    return-void
.end method
