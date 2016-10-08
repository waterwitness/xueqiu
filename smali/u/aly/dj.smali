.class final Lu/aly/dj;
.super Lu/aly/gl;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/dg;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Lu/aly/dj;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/dg;

    .line 1423
    check-cast p1, Lu/aly/gh;

    .line 1424
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v0

    iput v0, p2, Lu/aly/dg;->a:I

    .line 1425
    invoke-virtual {p2}, Lu/aly/dg;->a()V

    .line 1426
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lu/aly/gh;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1427
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1428
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/dg;->b:Ljava/lang/String;

    .line 1431
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1432
    new-instance v0, Lu/aly/bn;

    invoke-direct {v0}, Lu/aly/bn;-><init>()V

    iput-object v0, p2, Lu/aly/dg;->c:Lu/aly/bn;

    .line 1433
    iget-object v0, p2, Lu/aly/dg;->c:Lu/aly/bn;

    invoke-virtual {v0, p1}, Lu/aly/bn;->a(Lu/aly/ga;)V

    .line 1
    :cond_1
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/dg;

    .line 2403
    check-cast p1, Lu/aly/gh;

    .line 2404
    iget v0, p2, Lu/aly/dg;->a:I

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 2405
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2406
    invoke-virtual {p2}, Lu/aly/dg;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2407
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2409
    :cond_0
    invoke-virtual {p2}, Lu/aly/dg;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2410
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2412
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(Ljava/util/BitSet;I)V

    .line 2413
    invoke-virtual {p2}, Lu/aly/dg;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2414
    iget-object v0, p2, Lu/aly/dg;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2416
    :cond_2
    invoke-virtual {p2}, Lu/aly/dg;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2417
    iget-object v0, p2, Lu/aly/dg;->c:Lu/aly/bn;

    invoke-virtual {v0, p1}, Lu/aly/bn;->b(Lu/aly/ga;)V

    .line 1
    :cond_3
    return-void
.end method
