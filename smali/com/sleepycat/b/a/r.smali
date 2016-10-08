.class public final Lcom/sleepycat/b/a/r;
.super Ljava/lang/Object;
.source "LNInfo.java"


# instance fields
.field a:Lcom/sleepycat/b/l/y;

.field b:Lcom/sleepycat/b/c/h;

.field c:[B


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/h;[B)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sleepycat/b/a/r;->a:Lcom/sleepycat/b/l/y;

    .line 29
    iput-object p2, p0, Lcom/sleepycat/b/a/r;->b:Lcom/sleepycat/b/c/h;

    .line 30
    iput-object p3, p0, Lcom/sleepycat/b/a/r;->c:[B

    .line 31
    return-void
.end method


# virtual methods
.method final a()I
    .locals 4

    .prologue
    .line 50
    sget v0, Lcom/sleepycat/b/c/ao;->S:I

    .line 51
    iget-object v1, p0, Lcom/sleepycat/b/a/r;->a:Lcom/sleepycat/b/l/y;

    if-eqz v1, :cond_0

    .line 52
    int-to-long v0, v0

    iget-object v2, p0, Lcom/sleepycat/b/a/r;->a:Lcom/sleepycat/b/l/y;

    invoke-virtual {v2}, Lcom/sleepycat/b/l/y;->v_()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/a/r;->c:[B

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/sleepycat/b/a/r;->c:[B

    array-length v1, v1

    invoke-static {v1}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_1
    return v0
.end method
