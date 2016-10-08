.class public final Lcom/c/c/a;
.super Ljava/lang/Object;
.source "ViewHelper.java"


# direct methods
.method public static a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/c/c/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p0}, Lcom/c/c/a/a;->a(Landroid/view/View;)Lcom/c/c/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/c/c/a/a;->a(F)V

    .line 21
    :goto_0
    return-void

    .line 1185
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 136
    sget-boolean v0, Lcom/c/c/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p0}, Lcom/c/c/a/a;->a(Landroid/view/View;)Lcom/c/c/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/c/c/a/a;->b(F)V

    .line 141
    :goto_0
    return-void

    .line 1265
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method
