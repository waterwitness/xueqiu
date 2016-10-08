.class final Lcom/xueqiu/android/stock/PrivateFundActivity$5;
.super Lcom/xueqiu/android/base/b/p;
.source "PrivateFundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/PrivateFundActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/PrivateFundActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$5;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 534
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 535
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 531
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    .line 1539
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$5;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;

    .line 1540
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getProfileLargeImageUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$5;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    .line 1541
    invoke-static {v2}, Lcom/xueqiu/android/stock/PrivateFundActivity;->i(Lcom/xueqiu/android/stock/PrivateFundActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$5;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v3}, Lcom/xueqiu/android/stock/PrivateFundActivity;->j(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/d/a/b/d;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v4}, Lcom/xueqiu/android/base/util/o;-><init>()V

    .line 1540
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 1542
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$5;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->i(Lcom/xueqiu/android/stock/PrivateFundActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/PrivateFundActivity$5$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$5$1;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    return-void
.end method
