.class final Lu/aly/ay;
.super Lu/aly/gl;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/av;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Lu/aly/ay;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/av;

    .line 1477
    check-cast p1, Lu/aly/gh;

    .line 1478
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/av;->a:Ljava/lang/String;

    .line 1480
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/av;->c:Ljava/lang/String;

    .line 1482
    invoke-virtual {p1}, Lu/aly/gh;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/av;->d:J

    .line 1483
    invoke-virtual {p2}, Lu/aly/av;->b()V

    .line 1484
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lu/aly/gh;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1485
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1486
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/av;->b:Ljava/lang/String;

    .line 1
    :cond_0
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/av;

    .line 3461
    check-cast p1, Lu/aly/gh;

    .line 3462
    iget-object v0, p2, Lu/aly/av;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 3463
    iget-object v0, p2, Lu/aly/av;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 3464
    iget-wide v0, p2, Lu/aly/av;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(J)V

    .line 3465
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 3466
    invoke-virtual {p2}, Lu/aly/av;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3467
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 3469
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(Ljava/util/BitSet;I)V

    .line 3470
    invoke-virtual {p2}, Lu/aly/av;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3471
    iget-object v0, p2, Lu/aly/av;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 1
    :cond_1
    return-void
.end method
