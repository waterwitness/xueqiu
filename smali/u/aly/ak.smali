.class final Lu/aly/ak;
.super Lu/aly/gl;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/ah;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Lu/aly/ak;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/ah;

    .line 1431
    check-cast p1, Lu/aly/gh;

    .line 1432
    invoke-virtual {p1}, Lu/aly/gh;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ah;->a:J

    .line 1433
    invoke-virtual {p2}, Lu/aly/ah;->b()V

    .line 1434
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ah;->b:Ljava/lang/String;

    .line 1436
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lu/aly/gh;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1437
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1438
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v0

    invoke-static {v0}, Lu/aly/an;->a(I)Lu/aly/an;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ah;->c:Lu/aly/an;

    .line 1
    :cond_0
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/ah;

    .line 2416
    check-cast p1, Lu/aly/gh;

    .line 2417
    iget-wide v0, p2, Lu/aly/ah;->a:J

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(J)V

    .line 2418
    iget-object v0, p2, Lu/aly/ah;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2419
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2420
    invoke-virtual {p2}, Lu/aly/ah;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2421
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2423
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(Ljava/util/BitSet;I)V

    .line 2424
    invoke-virtual {p2}, Lu/aly/ah;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2425
    iget-object v0, p2, Lu/aly/ah;->c:Lu/aly/an;

    .line 3029
    iget v0, v0, Lu/aly/an;->c:I

    .line 2425
    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 1
    :cond_1
    return-void
.end method
