.class public final Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/o;
.super Ljava/lang/Object;
.source "TouchViewDraggableManager.java"

# interfaces
.implements Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/k;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const v0, 0x7f0e0649

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/o;->a:I

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;FF)Z
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/o;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_1

    move v0, v1

    .line 37
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v4, p3

    if-gtz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, p3

    if-ltz v3, :cond_2

    move v3, v1

    .line 38
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    move v2, v1

    .line 40
    :cond_0
    return v2

    :cond_1
    move v0, v2

    .line 36
    goto :goto_0

    :cond_2
    move v3, v2

    .line 37
    goto :goto_1
.end method
