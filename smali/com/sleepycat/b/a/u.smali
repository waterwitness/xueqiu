.class public final Lcom/sleepycat/b/a/u;
.super Ljava/lang/Object;
.source "OffsetList.java"


# instance fields
.field a:I

.field b:Lcom/sleepycat/b/a/u;

.field final c:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sleepycat/b/a/u;->c:[I

    .line 156
    return-void
.end method


# virtual methods
.method final a(I)J
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sleepycat/b/a/u;->c:[I

    aget v0, v0, p1

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    return-wide v0
.end method
