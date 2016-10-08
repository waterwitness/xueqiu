.class abstract Lcom/sleepycat/b/i/h/h;
.super Lcom/sleepycat/b/i/h/k;
.source "BinaryProtocol.java"


# instance fields
.field private final a:I

.field final synthetic b:Lcom/sleepycat/b/i/h/a;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/h/a;I)V
    .locals 1

    .prologue
    .line 922
    iput-object p1, p0, Lcom/sleepycat/b/i/h/h;->b:Lcom/sleepycat/b/i/h/a;

    .line 923
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/k;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 924
    iput p2, p0, Lcom/sleepycat/b/i/h/h;->a:I

    .line 925
    iget-object v0, p1, Lcom/sleepycat/b/i/h/a;->C:Lcom/sleepycat/b/i/c/b/x;

    .line 1099
    iget v0, v0, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 925
    iput v0, p0, Lcom/sleepycat/b/i/h/h;->c:I

    .line 926
    return-void
.end method


# virtual methods
.method public b()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 930
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sleepycat/b/i/h/h;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sleepycat/b/i/h/h;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/h/h;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 951
    iget v0, p0, Lcom/sleepycat/b/i/h/h;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 942
    iget v0, p0, Lcom/sleepycat/b/i/h/h;->a:I

    return v0
.end method
