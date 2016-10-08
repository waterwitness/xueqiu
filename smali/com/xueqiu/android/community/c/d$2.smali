.class final Lcom/xueqiu/android/community/c/d$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/d;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/d;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/xueqiu/android/community/c/d$2;->a:Lcom/xueqiu/android/community/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 713
    .line 1716
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d$2;->a:Lcom/xueqiu/android/community/c/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/d;->c(Lcom/xueqiu/android/community/c/d;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1717
    const v0, 0x7f0701da

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xueqiu/android/community/c/d$2;->a:Lcom/xueqiu/android/community/c/d;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/c/d;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getBoolean(Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v1

    .line 1718
    iget-object v0, p0, Lcom/xueqiu/android/community/c/d$2;->a:Lcom/xueqiu/android/community/c/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/d;->c(Lcom/xueqiu/android/community/c/d;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    .line 2393
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 1718
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 713
    :cond_0
    return-void
.end method
