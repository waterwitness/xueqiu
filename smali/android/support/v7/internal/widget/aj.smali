.class final Landroid/support/v7/internal/widget/aj;
.super Landroid/support/v7/internal/widget/ListPopupWindow;
.source "SpinnerICS.java"

# interfaces
.implements Landroid/support/v7/internal/widget/ak;


# instance fields
.field final synthetic i:Landroid/support/v7/internal/widget/ag;

.field private j:Ljava/lang/CharSequence;

.field private k:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/ag;Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 698
    iput-object p1, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    .line 699
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1377
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:Landroid/view/View;

    .line 702
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->a()V

    .line 2229
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I

    .line 705
    new-instance v0, Landroid/support/v7/internal/widget/r;

    new-instance v1, Landroid/support/v7/internal/widget/aj$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/widget/aj$1;-><init>(Landroid/support/v7/internal/widget/aj;Landroid/support/v7/internal/widget/ag;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/r;-><init>(Landroid/support/v7/internal/widget/o;Landroid/support/v7/internal/widget/q;)V

    .line 2472
    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->h:Landroid/widget/AdapterView$OnItemClickListener;

    .line 717
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/aj;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->k:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 721
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    .line 722
    iput-object p1, p0, Landroid/support/v7/internal/widget/aj;->k:Landroid/widget/ListAdapter;

    .line 723
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Landroid/support/v7/internal/widget/aj;->j:Ljava/lang/CharSequence;

    .line 732
    return-void
.end method

.method public final b()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 736
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->getPaddingLeft()I

    move-result v2

    .line 737
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    iget v0, v0, Landroid/support/v7/internal/widget/ag;->F:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_1

    .line 738
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->getWidth()I

    move-result v3

    .line 739
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->getPaddingRight()I

    move-result v4

    .line 740
    iget-object v5, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->k:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/SpinnerAdapter;

    .line 3331
    iget-object v6, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 740
    invoke-virtual {v5, v0, v6}, Landroid/support/v7/internal/widget/ag;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aj;->b(I)V

    .line 4331
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 752
    if-eqz v0, :cond_3

    .line 753
    iget-object v3, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-static {v3}, Landroid/support/v7/internal/widget/ag;->a(Landroid/support/v7/internal/widget/ag;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 754
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ag;->a(Landroid/support/v7/internal/widget/ag;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    .line 756
    :goto_1
    add-int/2addr v0, v2

    .line 4393
    iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->d:I

    .line 757
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aj;->d()V

    .line 758
    invoke-super {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->b()V

    .line 4765
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    .line 759
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 760
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    .line 5552
    iget v0, v0, Landroid/support/v7/internal/widget/o;->w:I

    .line 5656
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/support/v7/internal/widget/v;

    .line 5683
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    .line 5657
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 5658
    invoke-static {v2, v1}, Landroid/support/v7/internal/widget/v;->a(Landroid/support/v7/internal/widget/v;Z)Z

    .line 5659
    invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/v;->setSelection(I)V

    .line 5660
    invoke-virtual {v2}, Landroid/support/v7/internal/widget/v;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5661
    invoke-virtual {v2, v0, v7}, Landroid/support/v7/internal/widget/v;->setItemChecked(IZ)V

    .line 761
    :cond_0
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    iget v0, v0, Landroid/support/v7/internal/widget/ag;->F:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 744
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->getWidth()I

    move-result v0

    .line 745
    iget-object v3, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ag;->getPaddingRight()I

    move-result v3

    .line 746
    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aj;->b(I)V

    goto :goto_0

    .line 748
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    iget v0, v0, Landroid/support/v7/internal/widget/ag;->F:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aj;->b(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
