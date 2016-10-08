.class final Lu/aly/m;
.super Lu/aly/gl;
.source "ActivateMsg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/i;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lu/aly/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/i;

    .line 1284
    check-cast p1, Lu/aly/gh;

    .line 1285
    invoke-virtual {p1}, Lu/aly/gh;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/i;->a:J

    .line 1286
    invoke-virtual {p2}, Lu/aly/i;->a()V

    .line 1
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/i;

    .line 2278
    check-cast p1, Lu/aly/gh;

    .line 2279
    iget-wide v0, p2, Lu/aly/i;->a:J

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(J)V

    .line 1
    return-void
.end method
