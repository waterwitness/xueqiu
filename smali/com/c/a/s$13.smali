.class final Lcom/c/a/s$13;
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
    .line 87
    invoke-direct {p0, p1}, Lcom/c/b/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    check-cast p1, Landroid/view/View;

    .line 2095
    invoke-static {p1}, Lcom/c/c/a/a;->a(Landroid/view/View;)Lcom/c/c/a/a;

    move-result-object v0

    .line 2125
    iget v0, v0, Lcom/c/c/a/a;->h:F

    .line 2095
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 87
    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;F)V
    .locals 2

    .prologue
    .line 87
    check-cast p1, Landroid/view/View;

    .line 1090
    invoke-static {p1}, Lcom/c/c/a/a;->a(Landroid/view/View;)Lcom/c/c/a/a;

    move-result-object v0

    .line 1129
    iget v1, v0, Lcom/c/c/a/a;->h:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_0

    .line 1130
    invoke-virtual {v0}, Lcom/c/c/a/a;->a()V

    .line 1131
    iput p2, v0, Lcom/c/c/a/a;->h:F

    .line 1132
    invoke-virtual {v0}, Lcom/c/c/a/a;->b()V

    .line 87
    :cond_0
    return-void
.end method
