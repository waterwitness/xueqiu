.class final Lu/aly/eo;
.super Lu/aly/gl;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/el;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 765
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 765
    invoke-direct {p0}, Lu/aly/eo;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lu/aly/el;

    .line 1783
    check-cast p1, Lu/aly/gh;

    .line 1784
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/el;->a:Ljava/lang/String;

    .line 1786
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/el;->b:Ljava/lang/String;

    .line 1788
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/el;->c:Ljava/lang/String;

    .line 1790
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v0

    iput v0, p2, Lu/aly/el;->d:I

    .line 1791
    invoke-virtual {p2}, Lu/aly/el;->a()V

    .line 1792
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v0

    iput v0, p2, Lu/aly/el;->e:I

    .line 1793
    invoke-virtual {p2}, Lu/aly/el;->b()V

    .line 1794
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v0

    iput v0, p2, Lu/aly/el;->f:I

    .line 1795
    invoke-virtual {p2}, Lu/aly/el;->c()V

    .line 1796
    invoke-virtual {p1}, Lu/aly/gh;->q()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/el;->g:Ljava/nio/ByteBuffer;

    .line 1798
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/el;->h:Ljava/lang/String;

    .line 1800
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/el;->i:Ljava/lang/String;

    .line 1
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lu/aly/el;

    .line 2769
    check-cast p1, Lu/aly/gh;

    .line 2770
    iget-object v0, p2, Lu/aly/el;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2771
    iget-object v0, p2, Lu/aly/el;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2772
    iget-object v0, p2, Lu/aly/el;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2773
    iget v0, p2, Lu/aly/el;->d:I

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 2774
    iget v0, p2, Lu/aly/el;->e:I

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 2775
    iget v0, p2, Lu/aly/el;->f:I

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 2776
    iget-object v0, p2, Lu/aly/el;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/nio/ByteBuffer;)V

    .line 2777
    iget-object v0, p2, Lu/aly/el;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2778
    iget-object v0, p2, Lu/aly/el;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 1
    return-void
.end method
