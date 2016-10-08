.class final Lu/aly/bw;
.super Lu/aly/gl;
.source "ImprintValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/bt;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Lu/aly/bw;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/bt;

    .line 1415
    check-cast p1, Lu/aly/gh;

    .line 1416
    invoke-virtual {p1}, Lu/aly/gh;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bt;->b:J

    .line 1417
    invoke-virtual {p2}, Lu/aly/bt;->b()V

    .line 1418
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bt;->c:Ljava/lang/String;

    .line 1420
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lu/aly/gh;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1421
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bt;->a:Ljava/lang/String;

    .line 1
    :cond_0
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/bt;

    .line 3400
    check-cast p1, Lu/aly/gh;

    .line 3401
    iget-wide v0, p2, Lu/aly/bt;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(J)V

    .line 3402
    iget-object v0, p2, Lu/aly/bt;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 3403
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 3404
    invoke-virtual {p2}, Lu/aly/bt;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3405
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 3407
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(Ljava/util/BitSet;I)V

    .line 3408
    invoke-virtual {p2}, Lu/aly/bt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3409
    iget-object v0, p2, Lu/aly/bt;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 1
    :cond_1
    return-void
.end method
