.class final Lcom/xueqiu/android/stock/PrivateFundActivity$6$1;
.super Lcom/xueqiu/android/base/b/p;
.source "PrivateFundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/PrivateFundActivity$6;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/xueqiu/android/stock/PrivateFundActivity$6;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/PrivateFundActivity$6;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$6$1;->a:Lcom/xueqiu/android/stock/PrivateFundActivity$6;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 562
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 563
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 559
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    .line 1567
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$6$1;->a:Lcom/xueqiu/android/stock/PrivateFundActivity$6;

    iget-object v0, v0, Lcom/xueqiu/android/stock/PrivateFundActivity$6;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->b(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/community/model/User;)V

    .line 559
    return-void
.end method
