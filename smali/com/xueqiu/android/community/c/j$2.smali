.class final Lcom/xueqiu/android/community/c/j$2;
.super Ljava/lang/Object;
.source "LiveNewsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/j;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/j;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/j;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xueqiu/android/community/c/j$2;->a:Lcom/xueqiu/android/community/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j$2;->a:Lcom/xueqiu/android/community/c/j;

    invoke-static {v0, p2}, Lcom/xueqiu/android/community/c/j;->a(Lcom/xueqiu/android/community/c/j;I)V

    .line 117
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j$2;->a:Lcom/xueqiu/android/community/c/j;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/j;->b(Lcom/xueqiu/android/community/c/j;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/j$2;->a:Lcom/xueqiu/android/community/c/j;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/j;->c(Lcom/xueqiu/android/community/c/j;)Lcom/xueqiu/android/community/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/g;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j$2;->a:Lcom/xueqiu/android/community/c/j;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/j;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u66f4\u591a\u4e86"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    :cond_0
    return-void
.end method
