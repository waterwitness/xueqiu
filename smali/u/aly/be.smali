.class final Lu/aly/be;
.super Lu/aly/gl;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/bb;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Lu/aly/be;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/bb;

    .line 1403
    check-cast p1, Lu/aly/gh;

    .line 1404
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bb;->a:Ljava/lang/String;

    .line 1406
    invoke-virtual {p1}, Lu/aly/gh;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bb;->b:J

    .line 1407
    invoke-virtual {p2}, Lu/aly/bb;->a()V

    .line 1408
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v0

    iput v0, p2, Lu/aly/bb;->c:I

    .line 1409
    invoke-virtual {p2}, Lu/aly/bb;->b()V

    .line 1
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/bb;

    .line 2395
    check-cast p1, Lu/aly/gh;

    .line 2396
    iget-object v0, p2, Lu/aly/bb;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2397
    iget-wide v0, p2, Lu/aly/bb;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(J)V

    .line 2398
    iget v0, p2, Lu/aly/bb;->c:I

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 1
    return-void
.end method
