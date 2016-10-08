.class final Lcom/xueqiu/android/tactic/TacticDetailActivity$4;
.super Ljava/lang/Object;
.source "TacticDetailActivity.java"

# interfaces
.implements Lcom/d/a/b/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/TacticDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/TacticDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$4;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method public final a(Lcom/d/a/b/a/b;)V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 496
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$4;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->g(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/community/widget/TransparentHeader;->setHeaderBackground(Landroid/graphics/Bitmap;)V

    .line 505
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$4;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->f(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/PullToZoomListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    .line 506
    return-void
.end method
