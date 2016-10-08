.class final Lu/aly/ei;
.super Lu/aly/gl;
.source "UserInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/ef;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Lu/aly/ei;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/ef;

    .line 1498
    check-cast p1, Lu/aly/gh;

    .line 1499
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lu/aly/gh;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1500
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1501
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v1

    invoke-static {v1}, Lu/aly/au;->a(I)Lu/aly/au;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ef;->a:Lu/aly/au;

    .line 1504
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1505
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v1

    iput v1, p2, Lu/aly/ef;->b:I

    .line 1506
    invoke-virtual {p2}, Lu/aly/ef;->c()V

    .line 1508
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1509
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ef;->c:Ljava/lang/String;

    .line 1512
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1513
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ef;->d:Ljava/lang/String;

    .line 1
    :cond_3
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/ef;

    .line 2467
    check-cast p1, Lu/aly/gh;

    .line 2468
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2469
    invoke-virtual {p2}, Lu/aly/ef;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2470
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2472
    :cond_0
    invoke-virtual {p2}, Lu/aly/ef;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2473
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2475
    :cond_1
    invoke-virtual {p2}, Lu/aly/ef;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2476
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2478
    :cond_2
    invoke-virtual {p2}, Lu/aly/ef;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2479
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2481
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(Ljava/util/BitSet;I)V

    .line 2482
    invoke-virtual {p2}, Lu/aly/ef;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2483
    iget-object v0, p2, Lu/aly/ef;->a:Lu/aly/au;

    .line 3030
    iget v0, v0, Lu/aly/au;->d:I

    .line 2483
    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 2485
    :cond_4
    invoke-virtual {p2}, Lu/aly/ef;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2486
    iget v0, p2, Lu/aly/ef;->b:I

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 2488
    :cond_5
    invoke-virtual {p2}, Lu/aly/ef;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2489
    iget-object v0, p2, Lu/aly/ef;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2491
    :cond_6
    invoke-virtual {p2}, Lu/aly/ef;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2492
    iget-object v0, p2, Lu/aly/ef;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 1
    :cond_7
    return-void
.end method
