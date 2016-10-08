.class final Lu/aly/y;
.super Lu/aly/gl;
.source "ClientStats.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/v;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lu/aly/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/v;

    .line 1407
    check-cast p1, Lu/aly/gh;

    .line 1408
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v0

    iput v0, p2, Lu/aly/v;->a:I

    .line 1409
    invoke-virtual {p2}, Lu/aly/v;->a()V

    .line 1410
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v0

    iput v0, p2, Lu/aly/v;->b:I

    .line 1411
    invoke-virtual {p2}, Lu/aly/v;->b()V

    .line 1412
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lu/aly/gh;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1413
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1414
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v0

    iput v0, p2, Lu/aly/v;->c:I

    .line 1415
    invoke-virtual {p2}, Lu/aly/v;->d()V

    .line 1
    :cond_0
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/v;

    .line 2392
    check-cast p1, Lu/aly/gh;

    .line 2393
    iget v0, p2, Lu/aly/v;->a:I

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 2394
    iget v0, p2, Lu/aly/v;->b:I

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 2395
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2396
    invoke-virtual {p2}, Lu/aly/v;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2397
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2399
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(Ljava/util/BitSet;I)V

    .line 2400
    invoke-virtual {p2}, Lu/aly/v;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2401
    iget v0, p2, Lu/aly/v;->c:I

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 1
    :cond_1
    return-void
.end method
