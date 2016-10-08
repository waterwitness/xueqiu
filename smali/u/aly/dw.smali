.class final Lu/aly/dw;
.super Lu/aly/gl;
.source "Traffic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/dt;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lu/aly/dw;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lu/aly/dt;

    .line 1341
    check-cast p1, Lu/aly/gh;

    .line 1342
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v0

    iput v0, p2, Lu/aly/dt;->a:I

    .line 1343
    invoke-virtual {p2}, Lu/aly/dt;->a()V

    .line 1344
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v0

    iput v0, p2, Lu/aly/dt;->b:I

    .line 1345
    invoke-virtual {p2}, Lu/aly/dt;->b()V

    .line 1
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lu/aly/dt;

    .line 2334
    check-cast p1, Lu/aly/gh;

    .line 2335
    iget v0, p2, Lu/aly/dt;->a:I

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 2336
    iget v0, p2, Lu/aly/dt;->b:I

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 1
    return-void
.end method
