.class final Lcom/c/a/s$8;
.super Lcom/c/b/a;
.source "PreHoneycombCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/s;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/c/b/a",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/c/b/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Landroid/view/View;

    .line 2040
    invoke-static {p1}, Lcom/c/c/a/a;->a(Landroid/view/View;)Lcom/c/c/a/a;

    move-result-object v0

    .line 2094
    iget v0, v0, Lcom/c/c/a/a;->f:F

    .line 2040
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 32
    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;F)V
    .locals 2

    .prologue
    .line 32
    check-cast p1, Landroid/view/View;

    .line 1035
    invoke-static {p1}, Lcom/c/c/a/a;->a(Landroid/view/View;)Lcom/c/c/a/a;

    move-result-object v0

    .line 1097
    iget-boolean v1, v0, Lcom/c/c/a/a;->c:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/c/c/a/a;->f:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_1

    .line 1098
    :cond_0
    invoke-virtual {v0}, Lcom/c/c/a/a;->a()V

    .line 1099
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/c/c/a/a;->c:Z

    .line 1100
    iput p2, v0, Lcom/c/c/a/a;->f:F

    .line 1101
    invoke-virtual {v0}, Lcom/c/c/a/a;->b()V

    .line 32
    :cond_1
    return-void
.end method
