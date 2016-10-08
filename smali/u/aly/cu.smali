.class final Lu/aly/cu;
.super Lu/aly/gl;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/cr;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lu/aly/cu;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/cr;

    .line 1346
    check-cast p1, Lu/aly/gh;

    .line 1347
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cr;->a:Ljava/lang/String;

    .line 1349
    invoke-virtual {p1}, Lu/aly/gh;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/cr;->b:J

    .line 1350
    invoke-virtual {p2}, Lu/aly/cr;->a()V

    .line 1
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/cr;

    .line 2339
    check-cast p1, Lu/aly/gh;

    .line 2340
    iget-object v0, p2, Lu/aly/cr;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2341
    iget-wide v0, p2, Lu/aly/cr;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(J)V

    .line 1
    return-void
.end method
