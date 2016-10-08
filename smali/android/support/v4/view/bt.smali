.class Landroid/support/v4/view/bt;
.super Landroid/support/v4/view/bs;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1499
    invoke-direct {p0}, Landroid/support/v4/view/bs;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1517
    .line 2039
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 1518
    return-void
.end method

.method public final q(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1522
    .line 2043
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    .line 1522
    return v0
.end method

.method public final t(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1557
    .line 2132
    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    .line 1558
    return-void
.end method
