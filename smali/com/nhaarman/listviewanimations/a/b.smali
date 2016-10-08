.class public final Lcom/nhaarman/listviewanimations/a/b;
.super Ljava/lang/Object;
.source "AdapterViewUtil.java"


# direct methods
.method public static a(Lcom/nhaarman/listviewanimations/a/d;Landroid/view/View;)I
    .locals 2
    .param p0    # Lcom/nhaarman/listviewanimations/a/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-interface {p0, p1}, Lcom/nhaarman/listviewanimations/a/d;->a(Landroid/view/View;)I

    move-result v0

    invoke-interface {p0}, Lcom/nhaarman/listviewanimations/a/d;->h()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static a(Lcom/nhaarman/listviewanimations/a/d;I)Landroid/view/View;
    .locals 5
    .param p0    # Lcom/nhaarman/listviewanimations/a/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    invoke-interface {p0}, Lcom/nhaarman/listviewanimations/a/d;->g()I

    move-result v3

    .line 76
    const/4 v1, 0x0

    .line 77
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    if-nez v1, :cond_0

    .line 78
    invoke-interface {p0, v2}, Lcom/nhaarman/listviewanimations/a/d;->a(I)Landroid/view/View;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lcom/nhaarman/listviewanimations/a/b;->a(Lcom/nhaarman/listviewanimations/a/d;Landroid/view/View;)I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 77
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 83
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
