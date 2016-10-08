.class Landroid/support/v4/view/bm;
.super Landroid/support/v4/view/bl;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1083
    invoke-direct {p0}, Landroid/support/v4/view/bl;-><init>()V

    return-void
.end method


# virtual methods
.method final a()J
    .locals 2

    .prologue
    .line 2025
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    .line 1086
    return-wide v0
.end method

.method public final a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1134
    .line 4093
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 1135
    return-void
.end method

.method public final a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 1094
    .line 2033
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1095
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 1104
    .line 3037
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    .line 4033
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1106
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1107
    return-void
.end method

.method public final b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1138
    .line 4097
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 1139
    return-void
.end method

.method public final c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1142
    .line 4101
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1143
    return-void
.end method

.method public final f(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1090
    .line 2029
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 1090
    return v0
.end method

.method public final g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1098
    .line 2037
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    .line 1098
    return v0
.end method

.method public final l(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1126
    .line 4057
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 1126
    return v0
.end method

.method public final m(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1130
    .line 4061
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 1130
    return v0
.end method

.method public final s(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1230
    .line 4153
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1231
    return-void
.end method
