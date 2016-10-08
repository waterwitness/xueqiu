.class final Lcom/c/a/s$7;
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
    .line 21
    invoke-direct {p0, p1}, Lcom/c/b/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, Landroid/view/View;

    .line 2029
    invoke-static {p1}, Lcom/c/c/a/a;->a(Landroid/view/View;)Lcom/c/c/a/a;

    move-result-object v0

    .line 2083
    iget v0, v0, Lcom/c/c/a/a;->e:F

    .line 2029
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 21
    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;F)V
    .locals 2

    .prologue
    .line 21
    check-cast p1, Landroid/view/View;

    .line 1024
    invoke-static {p1}, Lcom/c/c/a/a;->a(Landroid/view/View;)Lcom/c/c/a/a;

    move-result-object v0

    .line 1086
    iget-boolean v1, v0, Lcom/c/c/a/a;->c:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/c/c/a/a;->e:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_1

    .line 1087
    :cond_0
    invoke-virtual {v0}, Lcom/c/c/a/a;->a()V

    .line 1088
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/c/c/a/a;->c:Z

    .line 1089
    iput p2, v0, Lcom/c/c/a/a;->e:F

    .line 1090
    invoke-virtual {v0}, Lcom/c/c/a/a;->b()V

    .line 21
    :cond_1
    return-void
.end method
