.class final Lcom/xueqiu/android/community/WriteStatusActivity$46;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/res/TypedArray;

.field final synthetic b:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;Landroid/content/res/TypedArray;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$46;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$46;->a:Landroid/content/res/TypedArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 530
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$46;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->g(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$46;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 531
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$46;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->h(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$46;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->i(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 533
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$46;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$46;->a:Landroid/content/res/TypedArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Lcom/xueqiu/android/community/WriteStatusActivity;I)V

    .line 534
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$46;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->j(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$46;->a:Landroid/content/res/TypedArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 535
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$46;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 536
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 541
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 525
    return-void
.end method
