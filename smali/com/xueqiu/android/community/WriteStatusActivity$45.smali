.class final Lcom/xueqiu/android/community/WriteStatusActivity$45;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$45;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 497
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$45;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->g(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$45;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 498
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$45;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->h(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$45;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->i(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 500
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$45;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$45;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Lcom/xueqiu/android/community/WriteStatusActivity;I)V

    .line 503
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$45;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->j(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 504
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 505
    return-void

    .line 500
    :array_0
    .array-data 4
        0x7f0100d7
        0x7f010092
    .end array-data
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 492
    return-void
.end method
