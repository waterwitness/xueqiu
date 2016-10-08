.class final Lu/aly/ci;
.super Lu/aly/gl;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/cf;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lu/aly/ci;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/cf;

    .line 1398
    check-cast p1, Lu/aly/gh;

    .line 1399
    invoke-virtual {p1}, Lu/aly/gh;->o()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/cf;->a:D

    .line 1400
    invoke-virtual {p2}, Lu/aly/cf;->a()V

    .line 1401
    invoke-virtual {p1}, Lu/aly/gh;->o()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/cf;->b:D

    .line 1402
    invoke-virtual {p2}, Lu/aly/cf;->b()V

    .line 1403
    invoke-virtual {p1}, Lu/aly/gh;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/cf;->c:J

    .line 1404
    invoke-virtual {p2}, Lu/aly/cf;->c()V

    .line 1
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/cf;

    .line 2390
    check-cast p1, Lu/aly/gh;

    .line 2391
    iget-wide v0, p2, Lu/aly/cf;->a:D

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(D)V

    .line 2392
    iget-wide v0, p2, Lu/aly/cf;->b:D

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(D)V

    .line 2393
    iget-wide v0, p2, Lu/aly/cf;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(J)V

    .line 1
    return-void
.end method
