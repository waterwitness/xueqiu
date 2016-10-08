.class Landroid/support/v4/view/bp;
.super Landroid/support/v4/view/bn;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1324
    invoke-direct {p0}, Landroid/support/v4/view/bn;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 1339
    .line 2042
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->postInvalidate(IIII)V

    .line 1340
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1343
    .line 2046
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1344
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 1347
    .line 2050
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 1348
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1358
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1359
    const/4 p2, 0x2

    .line 2058
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1362
    return-void
.end method

.method public final c(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1327
    .line 2029
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    .line 1327
    return v0
.end method

.method public final d(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1335
    .line 2037
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 1336
    return-void
.end method

.method public final e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1351
    .line 2054
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    .line 1351
    return v0
.end method

.method public final i(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 1378
    .line 2070
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 1378
    return-object v0
.end method

.method public final k(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1403
    .line 2090
    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    .line 1403
    return v0
.end method

.method public final n(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1383
    .line 2074
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    .line 1383
    return v0
.end method

.method public final o(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1388
    .line 2078
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    .line 1388
    return v0
.end method

.method public final r(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1398
    .line 2086
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    .line 1398
    return v0
.end method
