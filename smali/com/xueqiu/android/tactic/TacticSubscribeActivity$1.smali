.class final Lcom/xueqiu/android/tactic/TacticSubscribeActivity$1;
.super Landroid/support/v7/widget/y;
.source "TacticSubscribeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field a:Landroid/graphics/Paint;

.field final synthetic b:Lcom/xueqiu/android/tactic/TacticSubscribeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/TacticSubscribeActivity;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity$1;->b:Lcom/xueqiu/android/tactic/TacticSubscribeActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/y;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity$1;->a:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/al;)V
    .locals 8

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/y;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/al;)V

    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity$1;->a:Landroid/graphics/Paint;

    const v1, 0x7f0d012a

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v7

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 65
    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity$1;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 64
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method
