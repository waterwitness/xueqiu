.class final Lcom/pingan/b/c/f$3;
.super Ljava/lang/Object;
.source "ResumeUploader.java"

# interfaces
.implements Lcom/pingan/b/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/b/c/f;->a(IILjava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/pingan/b/c/f;


# direct methods
.method constructor <init>(Lcom/pingan/b/c/f;I)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/pingan/b/c/f$3;->b:Lcom/pingan/b/c/f;

    iput p2, p0, Lcom/pingan/b/c/f$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 6

    .prologue
    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    .line 235
    iget v0, p0, Lcom/pingan/b/c/f$3;->a:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, 0x400000

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/pingan/b/c/f$3;->b:Lcom/pingan/b/c/f;

    invoke-static {v0}, Lcom/pingan/b/c/f;->h(Lcom/pingan/b/c/f;)Ljava/util/List;

    move-result-object v0

    iget v4, p0, Lcom/pingan/b/c/f$3;->a:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pingan/b/b/a;

    .line 1032
    iget v0, v0, Lcom/pingan/b/b/a;->a:I

    .line 235
    iget-object v4, p0, Lcom/pingan/b/c/f$3;->b:Lcom/pingan/b/c/f;

    invoke-static {v4}, Lcom/pingan/b/c/f;->g(Lcom/pingan/b/c/f;)Lcom/pingan/b/c/a;

    move-result-object v4

    iget v4, v4, Lcom/pingan/b/c/a;->i:I

    mul-int/2addr v0, v4

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    int-to-double v0, v0

    iget-object v4, p0, Lcom/pingan/b/c/f$3;->b:Lcom/pingan/b/c/f;

    invoke-static {v4}, Lcom/pingan/b/c/f;->i(Lcom/pingan/b/c/f;)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v0, v4

    .line 236
    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/pingan/b/c/f$3;->b:Lcom/pingan/b/c/f;

    invoke-static {v2}, Lcom/pingan/b/c/f;->d(Lcom/pingan/b/c/f;)Lcom/pingan/b/c/l;

    move-result-object v2

    iget-object v2, v2, Lcom/pingan/b/c/l;->b:Lcom/pingan/b/c/i;

    iget-object v3, p0, Lcom/pingan/b/c/f$3;->b:Lcom/pingan/b/c/f;

    invoke-static {v3}, Lcom/pingan/b/c/f;->c(Lcom/pingan/b/c/f;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/pingan/b/c/i;->a(Ljava/lang/String;D)V

    .line 240
    return-void
.end method
