.class final Lcom/xueqiu/android/community/a/ak$30;
.super Lrx/i;
.source "StatusListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/ak;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/User;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1914
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$30;->c:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$30;->a:Lcom/xueqiu/android/community/model/User;

    iput-object p3, p0, Lcom/xueqiu/android/community/a/ak$30;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$30;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 1918
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$30;->a:Lcom/xueqiu/android/community/model/User;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$30;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/model/User;->setFollowing(Z)V

    .line 1919
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$30;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$30;->a:Lcom/xueqiu/android/community/model/User;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/ak;->a(Lcom/xueqiu/android/community/model/User;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1920
    return-void

    .line 1918
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1914
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$30;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 1925
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1926
    return-void
.end method
