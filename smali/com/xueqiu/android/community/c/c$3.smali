.class final Lcom/xueqiu/android/community/c/c$3;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/c;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/xueqiu/android/community/c/c$3;->a:Lcom/xueqiu/android/community/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 244
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$3;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->d(Lcom/xueqiu/android/community/c/c;)Lcom/viewpagerindicator/TabPageIndicator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->canScrollHorizontally(I)Z

    move-result v0

    .line 245
    iget-object v1, p0, Lcom/xueqiu/android/community/c/c$3;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/c;->e(Lcom/xueqiu/android/community/c/c;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$3;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->e(Lcom/xueqiu/android/community/c/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/community/c/c$3;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/c;->e(Lcom/xueqiu/android/community/c/c;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$3;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->e(Lcom/xueqiu/android/community/c/c;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
