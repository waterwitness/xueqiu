.class final Landroid/support/v4/widget/aq;
.super Landroid/support/v4/widget/ao;
.source "SlidingPaneLayout.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1534
    invoke-direct {p0}, Landroid/support/v4/widget/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1537
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/ak;

    iget-object v0, v0, Landroid/support/v4/widget/ak;->d:Landroid/graphics/Paint;

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1538
    return-void
.end method
